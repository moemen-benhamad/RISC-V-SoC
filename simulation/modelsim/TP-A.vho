-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Full Version"

-- DATE "10/16/2024 11:31:30"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	banc2reg IS
    PORT (
	BusA : BUFFER std_logic_vector(31 DOWNTO 0);
	BusB : BUFFER std_logic_vector(31 DOWNTO 0);
	BusW : IN std_logic_vector(31 DOWNTO 0);
	clk : IN std_logic;
	RA : IN std_logic_vector(2 DOWNTO 0);
	RB : IN std_logic_vector(2 DOWNTO 0);
	RW : IN std_logic_vector(2 DOWNTO 0);
	we : IN std_logic
	);
END banc2reg;

-- Design Ports Information
-- BusA[0]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusA[1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusA[2]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusA[3]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusA[4]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusA[5]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusA[6]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusA[7]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusA[8]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusA[9]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusA[10]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusA[11]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusA[12]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusA[13]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusA[14]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusA[15]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusA[16]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusA[17]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusA[18]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusA[19]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusA[20]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusA[21]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusA[22]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusA[23]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusA[24]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusA[25]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusA[26]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusA[27]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusA[28]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusA[29]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusA[30]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusA[31]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusB[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusB[1]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusB[2]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusB[3]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusB[4]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusB[5]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusB[6]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusB[7]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusB[8]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusB[9]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusB[10]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusB[11]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusB[12]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusB[13]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusB[14]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusB[15]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusB[16]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusB[17]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusB[18]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusB[19]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusB[20]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusB[21]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusB[22]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusB[23]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusB[24]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusB[25]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusB[26]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusB[27]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusB[28]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusB[29]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusB[30]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusB[31]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[1]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[0]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[2]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[1]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[0]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusW[0]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RW[1]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RW[2]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RW[0]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- we	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusW[1]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusW[2]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusW[3]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusW[4]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusW[5]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusW[6]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusW[7]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusW[8]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusW[9]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusW[10]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusW[11]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusW[12]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusW[13]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusW[14]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusW[15]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusW[16]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusW[17]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusW[18]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusW[19]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusW[20]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusW[21]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusW[22]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusW[23]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusW[24]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusW[25]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusW[26]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusW[27]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusW[28]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusW[29]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusW[30]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BusW[31]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF banc2reg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_BusA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_BusB : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_BusW : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_RA : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_RB : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_RW : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_we : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \BusW[0]~input_o\ : std_logic;
SIGNAL \RW[2]~input_o\ : std_logic;
SIGNAL \RW[1]~input_o\ : std_logic;
SIGNAL \we~input_o\ : std_logic;
SIGNAL \RW[0]~input_o\ : std_logic;
SIGNAL \banc~1382_combout\ : std_logic;
SIGNAL \banc~198_q\ : std_logic;
SIGNAL \RA[2]~input_o\ : std_logic;
SIGNAL \banc~1388_combout\ : std_logic;
SIGNAL \banc~230_q\ : std_logic;
SIGNAL \banc~1387_combout\ : std_logic;
SIGNAL \banc~102_q\ : std_logic;
SIGNAL \banc~1385_combout\ : std_logic;
SIGNAL \banc~70_q\ : std_logic;
SIGNAL \RA[1]~input_o\ : std_logic;
SIGNAL \banc~1386_combout\ : std_logic;
SIGNAL \banc~134_q\ : std_logic;
SIGNAL \RA[0]~input_o\ : std_logic;
SIGNAL \banc~1318_combout\ : std_logic;
SIGNAL \banc~262feeder_combout\ : std_logic;
SIGNAL \banc~1383_combout\ : std_logic;
SIGNAL \banc~262_q\ : std_logic;
SIGNAL \banc~1384_combout\ : std_logic;
SIGNAL \banc~166_q\ : std_logic;
SIGNAL \banc~1062_combout\ : std_logic;
SIGNAL \BusW[1]~input_o\ : std_logic;
SIGNAL \banc~103_q\ : std_logic;
SIGNAL \banc~135_q\ : std_logic;
SIGNAL \banc~71_q\ : std_logic;
SIGNAL \banc~1319_combout\ : std_logic;
SIGNAL \banc~199feeder_combout\ : std_logic;
SIGNAL \banc~199_q\ : std_logic;
SIGNAL \banc~231_q\ : std_logic;
SIGNAL \banc~263feeder_combout\ : std_logic;
SIGNAL \banc~263_q\ : std_logic;
SIGNAL \banc~167_q\ : std_logic;
SIGNAL \banc~1066_combout\ : std_logic;
SIGNAL \BusW[2]~input_o\ : std_logic;
SIGNAL \banc~104_q\ : std_logic;
SIGNAL \banc~72feeder_combout\ : std_logic;
SIGNAL \banc~72_q\ : std_logic;
SIGNAL \banc~136_q\ : std_logic;
SIGNAL \banc~1320_combout\ : std_logic;
SIGNAL \banc~200_q\ : std_logic;
SIGNAL \banc~232_q\ : std_logic;
SIGNAL \banc~264_q\ : std_logic;
SIGNAL \banc~168_q\ : std_logic;
SIGNAL \banc~1070_combout\ : std_logic;
SIGNAL \BusW[3]~input_o\ : std_logic;
SIGNAL \banc~265_q\ : std_logic;
SIGNAL \banc~73feeder_combout\ : std_logic;
SIGNAL \banc~73_q\ : std_logic;
SIGNAL \banc~105_q\ : std_logic;
SIGNAL \banc~137_q\ : std_logic;
SIGNAL \banc~1321_combout\ : std_logic;
SIGNAL \banc~233_q\ : std_logic;
SIGNAL \banc~201feeder_combout\ : std_logic;
SIGNAL \banc~201_q\ : std_logic;
SIGNAL \banc~169_q\ : std_logic;
SIGNAL \banc~1074_combout\ : std_logic;
SIGNAL \BusW[4]~input_o\ : std_logic;
SIGNAL \banc~266_q\ : std_logic;
SIGNAL \banc~106_q\ : std_logic;
SIGNAL \banc~74_q\ : std_logic;
SIGNAL \banc~138_q\ : std_logic;
SIGNAL \banc~1322_combout\ : std_logic;
SIGNAL \banc~234_q\ : std_logic;
SIGNAL \banc~202_q\ : std_logic;
SIGNAL \banc~170_q\ : std_logic;
SIGNAL \banc~1078_combout\ : std_logic;
SIGNAL \BusW[5]~input_o\ : std_logic;
SIGNAL \banc~267_q\ : std_logic;
SIGNAL \banc~235_q\ : std_logic;
SIGNAL \banc~75_q\ : std_logic;
SIGNAL \banc~107_q\ : std_logic;
SIGNAL \banc~139_q\ : std_logic;
SIGNAL \banc~1323_combout\ : std_logic;
SIGNAL \banc~203feeder_combout\ : std_logic;
SIGNAL \banc~203_q\ : std_logic;
SIGNAL \banc~171_q\ : std_logic;
SIGNAL \banc~1082_combout\ : std_logic;
SIGNAL \BusW[6]~input_o\ : std_logic;
SIGNAL \banc~204feeder_combout\ : std_logic;
SIGNAL \banc~204_q\ : std_logic;
SIGNAL \banc~236_q\ : std_logic;
SIGNAL \banc~108_q\ : std_logic;
SIGNAL \banc~140_q\ : std_logic;
SIGNAL \banc~76_q\ : std_logic;
SIGNAL \banc~1324_combout\ : std_logic;
SIGNAL \banc~268feeder_combout\ : std_logic;
SIGNAL \banc~268_q\ : std_logic;
SIGNAL \banc~172_q\ : std_logic;
SIGNAL \banc~1086_combout\ : std_logic;
SIGNAL \BusW[7]~input_o\ : std_logic;
SIGNAL \banc~205feeder_combout\ : std_logic;
SIGNAL \banc~205_q\ : std_logic;
SIGNAL \banc~109_q\ : std_logic;
SIGNAL \banc~77feeder_combout\ : std_logic;
SIGNAL \banc~77_q\ : std_logic;
SIGNAL \banc~141_q\ : std_logic;
SIGNAL \banc~1325_combout\ : std_logic;
SIGNAL \banc~237_q\ : std_logic;
SIGNAL \banc~269feeder_combout\ : std_logic;
SIGNAL \banc~269_q\ : std_logic;
SIGNAL \banc~173_q\ : std_logic;
SIGNAL \banc~1090_combout\ : std_logic;
SIGNAL \BusW[8]~input_o\ : std_logic;
SIGNAL \banc~110_q\ : std_logic;
SIGNAL \banc~78feeder_combout\ : std_logic;
SIGNAL \banc~78_q\ : std_logic;
SIGNAL \banc~142_q\ : std_logic;
SIGNAL \banc~1326_combout\ : std_logic;
SIGNAL \banc~206_q\ : std_logic;
SIGNAL \banc~238_q\ : std_logic;
SIGNAL \banc~270feeder_combout\ : std_logic;
SIGNAL \banc~270_q\ : std_logic;
SIGNAL \banc~174_q\ : std_logic;
SIGNAL \banc~1094_combout\ : std_logic;
SIGNAL \BusW[9]~input_o\ : std_logic;
SIGNAL \banc~79_q\ : std_logic;
SIGNAL \banc~111_q\ : std_logic;
SIGNAL \banc~143_q\ : std_logic;
SIGNAL \banc~1327_combout\ : std_logic;
SIGNAL \banc~239_q\ : std_logic;
SIGNAL \banc~207_q\ : std_logic;
SIGNAL \banc~271feeder_combout\ : std_logic;
SIGNAL \banc~271_q\ : std_logic;
SIGNAL \banc~175_q\ : std_logic;
SIGNAL \banc~1098_combout\ : std_logic;
SIGNAL \BusW[10]~input_o\ : std_logic;
SIGNAL \banc~208feeder_combout\ : std_logic;
SIGNAL \banc~208_q\ : std_logic;
SIGNAL \banc~272feeder_combout\ : std_logic;
SIGNAL \banc~272_q\ : std_logic;
SIGNAL \banc~240_q\ : std_logic;
SIGNAL \banc~112_q\ : std_logic;
SIGNAL \banc~144_q\ : std_logic;
SIGNAL \banc~80feeder_combout\ : std_logic;
SIGNAL \banc~80_q\ : std_logic;
SIGNAL \banc~1328_combout\ : std_logic;
SIGNAL \banc~176_q\ : std_logic;
SIGNAL \banc~1102_combout\ : std_logic;
SIGNAL \BusW[11]~input_o\ : std_logic;
SIGNAL \banc~113_q\ : std_logic;
SIGNAL \banc~81feeder_combout\ : std_logic;
SIGNAL \banc~81_q\ : std_logic;
SIGNAL \banc~145_q\ : std_logic;
SIGNAL \banc~1329_combout\ : std_logic;
SIGNAL \banc~241_q\ : std_logic;
SIGNAL \banc~273_q\ : std_logic;
SIGNAL \banc~209_q\ : std_logic;
SIGNAL \banc~177_q\ : std_logic;
SIGNAL \banc~1106_combout\ : std_logic;
SIGNAL \BusW[12]~input_o\ : std_logic;
SIGNAL \banc~274_q\ : std_logic;
SIGNAL \banc~114_q\ : std_logic;
SIGNAL \banc~82feeder_combout\ : std_logic;
SIGNAL \banc~82_q\ : std_logic;
SIGNAL \banc~146_q\ : std_logic;
SIGNAL \banc~1330_combout\ : std_logic;
SIGNAL \banc~242_q\ : std_logic;
SIGNAL \banc~210_q\ : std_logic;
SIGNAL \banc~178_q\ : std_logic;
SIGNAL \banc~1110_combout\ : std_logic;
SIGNAL \BusW[13]~input_o\ : std_logic;
SIGNAL \banc~83feeder_combout\ : std_logic;
SIGNAL \banc~83_q\ : std_logic;
SIGNAL \banc~147_q\ : std_logic;
SIGNAL \banc~115_q\ : std_logic;
SIGNAL \banc~1331_combout\ : std_logic;
SIGNAL \banc~275_q\ : std_logic;
SIGNAL \banc~243_q\ : std_logic;
SIGNAL \banc~211_q\ : std_logic;
SIGNAL \banc~179_q\ : std_logic;
SIGNAL \banc~1114_combout\ : std_logic;
SIGNAL \BusW[14]~input_o\ : std_logic;
SIGNAL \banc~276feeder_combout\ : std_logic;
SIGNAL \banc~276_q\ : std_logic;
SIGNAL \banc~212feeder_combout\ : std_logic;
SIGNAL \banc~212_q\ : std_logic;
SIGNAL \banc~244_q\ : std_logic;
SIGNAL \banc~84feeder_combout\ : std_logic;
SIGNAL \banc~84_q\ : std_logic;
SIGNAL \banc~116_q\ : std_logic;
SIGNAL \banc~148_q\ : std_logic;
SIGNAL \banc~1332_combout\ : std_logic;
SIGNAL \banc~180_q\ : std_logic;
SIGNAL \banc~1118_combout\ : std_logic;
SIGNAL \BusW[15]~input_o\ : std_logic;
SIGNAL \banc~213feeder_combout\ : std_logic;
SIGNAL \banc~213_q\ : std_logic;
SIGNAL \banc~277_q\ : std_logic;
SIGNAL \banc~245_q\ : std_logic;
SIGNAL \banc~85_q\ : std_logic;
SIGNAL \banc~117_q\ : std_logic;
SIGNAL \banc~149_q\ : std_logic;
SIGNAL \banc~1333_combout\ : std_logic;
SIGNAL \banc~181_q\ : std_logic;
SIGNAL \banc~1122_combout\ : std_logic;
SIGNAL \BusW[16]~input_o\ : std_logic;
SIGNAL \banc~118_q\ : std_logic;
SIGNAL \banc~86feeder_combout\ : std_logic;
SIGNAL \banc~86_q\ : std_logic;
SIGNAL \banc~150_q\ : std_logic;
SIGNAL \banc~1334_combout\ : std_logic;
SIGNAL \banc~214feeder_combout\ : std_logic;
SIGNAL \banc~214_q\ : std_logic;
SIGNAL \banc~246_q\ : std_logic;
SIGNAL \banc~278feeder_combout\ : std_logic;
SIGNAL \banc~278_q\ : std_logic;
SIGNAL \banc~182_q\ : std_logic;
SIGNAL \banc~1126_combout\ : std_logic;
SIGNAL \BusW[17]~input_o\ : std_logic;
SIGNAL \banc~87_q\ : std_logic;
SIGNAL \banc~119_q\ : std_logic;
SIGNAL \banc~151_q\ : std_logic;
SIGNAL \banc~1335_combout\ : std_logic;
SIGNAL \banc~279_q\ : std_logic;
SIGNAL \banc~247_q\ : std_logic;
SIGNAL \banc~215_q\ : std_logic;
SIGNAL \banc~183_q\ : std_logic;
SIGNAL \banc~1130_combout\ : std_logic;
SIGNAL \BusW[18]~input_o\ : std_logic;
SIGNAL \banc~280_q\ : std_logic;
SIGNAL \banc~248_q\ : std_logic;
SIGNAL \banc~88_q\ : std_logic;
SIGNAL \banc~120_q\ : std_logic;
SIGNAL \banc~152_q\ : std_logic;
SIGNAL \banc~1336_combout\ : std_logic;
SIGNAL \banc~216_q\ : std_logic;
SIGNAL \banc~184_q\ : std_logic;
SIGNAL \banc~1134_combout\ : std_logic;
SIGNAL \BusW[19]~input_o\ : std_logic;
SIGNAL \banc~281feeder_combout\ : std_logic;
SIGNAL \banc~281_q\ : std_logic;
SIGNAL \banc~249_q\ : std_logic;
SIGNAL \banc~89_q\ : std_logic;
SIGNAL \banc~121_q\ : std_logic;
SIGNAL \banc~153_q\ : std_logic;
SIGNAL \banc~1337_combout\ : std_logic;
SIGNAL \banc~217feeder_combout\ : std_logic;
SIGNAL \banc~217_q\ : std_logic;
SIGNAL \banc~185_q\ : std_logic;
SIGNAL \banc~1138_combout\ : std_logic;
SIGNAL \BusW[20]~input_o\ : std_logic;
SIGNAL \banc~282_q\ : std_logic;
SIGNAL \banc~250_q\ : std_logic;
SIGNAL \banc~218feeder_combout\ : std_logic;
SIGNAL \banc~218_q\ : std_logic;
SIGNAL \banc~90feeder_combout\ : std_logic;
SIGNAL \banc~90_q\ : std_logic;
SIGNAL \banc~122_q\ : std_logic;
SIGNAL \banc~154_q\ : std_logic;
SIGNAL \banc~1338_combout\ : std_logic;
SIGNAL \banc~186_q\ : std_logic;
SIGNAL \banc~1142_combout\ : std_logic;
SIGNAL \BusW[21]~input_o\ : std_logic;
SIGNAL \banc~283feeder_combout\ : std_logic;
SIGNAL \banc~283_q\ : std_logic;
SIGNAL \banc~219_q\ : std_logic;
SIGNAL \banc~251_q\ : std_logic;
SIGNAL \banc~123_q\ : std_logic;
SIGNAL \banc~91feeder_combout\ : std_logic;
SIGNAL \banc~91_q\ : std_logic;
SIGNAL \banc~155_q\ : std_logic;
SIGNAL \banc~1339_combout\ : std_logic;
SIGNAL \banc~187_q\ : std_logic;
SIGNAL \banc~1146_combout\ : std_logic;
SIGNAL \BusW[22]~input_o\ : std_logic;
SIGNAL \banc~92feeder_combout\ : std_logic;
SIGNAL \banc~92_q\ : std_logic;
SIGNAL \banc~124_q\ : std_logic;
SIGNAL \banc~156_q\ : std_logic;
SIGNAL \banc~1340_combout\ : std_logic;
SIGNAL \banc~252_q\ : std_logic;
SIGNAL \banc~284feeder_combout\ : std_logic;
SIGNAL \banc~284_q\ : std_logic;
SIGNAL \banc~220feeder_combout\ : std_logic;
SIGNAL \banc~220_q\ : std_logic;
SIGNAL \banc~188_q\ : std_logic;
SIGNAL \banc~1150_combout\ : std_logic;
SIGNAL \BusW[23]~input_o\ : std_logic;
SIGNAL \banc~285feeder_combout\ : std_logic;
SIGNAL \banc~285_q\ : std_logic;
SIGNAL \banc~253_q\ : std_logic;
SIGNAL \banc~125_q\ : std_logic;
SIGNAL \banc~93feeder_combout\ : std_logic;
SIGNAL \banc~93_q\ : std_logic;
SIGNAL \banc~157_q\ : std_logic;
SIGNAL \banc~1341_combout\ : std_logic;
SIGNAL \banc~221_q\ : std_logic;
SIGNAL \banc~189_q\ : std_logic;
SIGNAL \banc~1154_combout\ : std_logic;
SIGNAL \BusW[24]~input_o\ : std_logic;
SIGNAL \banc~126_q\ : std_logic;
SIGNAL \banc~94feeder_combout\ : std_logic;
SIGNAL \banc~94_q\ : std_logic;
SIGNAL \banc~158_q\ : std_logic;
SIGNAL \banc~1342_combout\ : std_logic;
SIGNAL \banc~222_q\ : std_logic;
SIGNAL \banc~254_q\ : std_logic;
SIGNAL \banc~286_q\ : std_logic;
SIGNAL \banc~190_q\ : std_logic;
SIGNAL \banc~1158_combout\ : std_logic;
SIGNAL \BusW[25]~input_o\ : std_logic;
SIGNAL \banc~287feeder_combout\ : std_logic;
SIGNAL \banc~287_q\ : std_logic;
SIGNAL \banc~255_q\ : std_logic;
SIGNAL \banc~95feeder_combout\ : std_logic;
SIGNAL \banc~95_q\ : std_logic;
SIGNAL \banc~127_q\ : std_logic;
SIGNAL \banc~159_q\ : std_logic;
SIGNAL \banc~1343_combout\ : std_logic;
SIGNAL \banc~223feeder_combout\ : std_logic;
SIGNAL \banc~223_q\ : std_logic;
SIGNAL \banc~191_q\ : std_logic;
SIGNAL \banc~1162_combout\ : std_logic;
SIGNAL \BusW[26]~input_o\ : std_logic;
SIGNAL \banc~224feeder_combout\ : std_logic;
SIGNAL \banc~224_q\ : std_logic;
SIGNAL \banc~288feeder_combout\ : std_logic;
SIGNAL \banc~288_q\ : std_logic;
SIGNAL \banc~256_q\ : std_logic;
SIGNAL \banc~128_q\ : std_logic;
SIGNAL \banc~96_q\ : std_logic;
SIGNAL \banc~160_q\ : std_logic;
SIGNAL \banc~1344_combout\ : std_logic;
SIGNAL \banc~192_q\ : std_logic;
SIGNAL \banc~1166_combout\ : std_logic;
SIGNAL \BusW[27]~input_o\ : std_logic;
SIGNAL \banc~225_q\ : std_logic;
SIGNAL \banc~97feeder_combout\ : std_logic;
SIGNAL \banc~97_q\ : std_logic;
SIGNAL \banc~129_q\ : std_logic;
SIGNAL \banc~161_q\ : std_logic;
SIGNAL \banc~1345_combout\ : std_logic;
SIGNAL \banc~257_q\ : std_logic;
SIGNAL \banc~289_q\ : std_logic;
SIGNAL \banc~193_q\ : std_logic;
SIGNAL \banc~1170_combout\ : std_logic;
SIGNAL \BusW[28]~input_o\ : std_logic;
SIGNAL \banc~226feeder_combout\ : std_logic;
SIGNAL \banc~226_q\ : std_logic;
SIGNAL \banc~290feeder_combout\ : std_logic;
SIGNAL \banc~290_q\ : std_logic;
SIGNAL \banc~258_q\ : std_logic;
SIGNAL \banc~130_q\ : std_logic;
SIGNAL \banc~98feeder_combout\ : std_logic;
SIGNAL \banc~98_q\ : std_logic;
SIGNAL \banc~162_q\ : std_logic;
SIGNAL \banc~1346_combout\ : std_logic;
SIGNAL \banc~194_q\ : std_logic;
SIGNAL \banc~1174_combout\ : std_logic;
SIGNAL \BusW[29]~input_o\ : std_logic;
SIGNAL \banc~227feeder_combout\ : std_logic;
SIGNAL \banc~227_q\ : std_logic;
SIGNAL \banc~291_q\ : std_logic;
SIGNAL \banc~259_q\ : std_logic;
SIGNAL \banc~131_q\ : std_logic;
SIGNAL \banc~99feeder_combout\ : std_logic;
SIGNAL \banc~99_q\ : std_logic;
SIGNAL \banc~163_q\ : std_logic;
SIGNAL \banc~1347_combout\ : std_logic;
SIGNAL \banc~195_q\ : std_logic;
SIGNAL \banc~1178_combout\ : std_logic;
SIGNAL \BusW[30]~input_o\ : std_logic;
SIGNAL \banc~228_q\ : std_logic;
SIGNAL \banc~260_q\ : std_logic;
SIGNAL \banc~292_q\ : std_logic;
SIGNAL \banc~132_q\ : std_logic;
SIGNAL \banc~100feeder_combout\ : std_logic;
SIGNAL \banc~100_q\ : std_logic;
SIGNAL \banc~164_q\ : std_logic;
SIGNAL \banc~1348_combout\ : std_logic;
SIGNAL \banc~196_q\ : std_logic;
SIGNAL \banc~1182_combout\ : std_logic;
SIGNAL \BusW[31]~input_o\ : std_logic;
SIGNAL \banc~293_q\ : std_logic;
SIGNAL \banc~101feeder_combout\ : std_logic;
SIGNAL \banc~101_q\ : std_logic;
SIGNAL \banc~133_q\ : std_logic;
SIGNAL \banc~165_q\ : std_logic;
SIGNAL \banc~1349_combout\ : std_logic;
SIGNAL \banc~261_q\ : std_logic;
SIGNAL \banc~229feeder_combout\ : std_logic;
SIGNAL \banc~229_q\ : std_logic;
SIGNAL \banc~197_q\ : std_logic;
SIGNAL \banc~1186_combout\ : std_logic;
SIGNAL \RB[2]~input_o\ : std_logic;
SIGNAL \RB[0]~input_o\ : std_logic;
SIGNAL \RB[1]~input_o\ : std_logic;
SIGNAL \banc~1350_combout\ : std_logic;
SIGNAL \banc~1190_combout\ : std_logic;
SIGNAL \banc~1351_combout\ : std_logic;
SIGNAL \banc~1194_combout\ : std_logic;
SIGNAL \banc~1352_combout\ : std_logic;
SIGNAL \banc~1198_combout\ : std_logic;
SIGNAL \banc~1353_combout\ : std_logic;
SIGNAL \banc~1202_combout\ : std_logic;
SIGNAL \banc~1354_combout\ : std_logic;
SIGNAL \banc~1206_combout\ : std_logic;
SIGNAL \banc~1355_combout\ : std_logic;
SIGNAL \banc~1210_combout\ : std_logic;
SIGNAL \banc~1356_combout\ : std_logic;
SIGNAL \banc~1214_combout\ : std_logic;
SIGNAL \banc~1357_combout\ : std_logic;
SIGNAL \banc~1218_combout\ : std_logic;
SIGNAL \banc~1358_combout\ : std_logic;
SIGNAL \banc~1222_combout\ : std_logic;
SIGNAL \banc~1359_combout\ : std_logic;
SIGNAL \banc~1226_combout\ : std_logic;
SIGNAL \banc~1360_combout\ : std_logic;
SIGNAL \banc~1230_combout\ : std_logic;
SIGNAL \banc~1361_combout\ : std_logic;
SIGNAL \banc~1234_combout\ : std_logic;
SIGNAL \banc~1362_combout\ : std_logic;
SIGNAL \banc~1238_combout\ : std_logic;
SIGNAL \banc~1363_combout\ : std_logic;
SIGNAL \banc~1242_combout\ : std_logic;
SIGNAL \banc~1364_combout\ : std_logic;
SIGNAL \banc~1246_combout\ : std_logic;
SIGNAL \banc~1365_combout\ : std_logic;
SIGNAL \banc~1250_combout\ : std_logic;
SIGNAL \banc~1366_combout\ : std_logic;
SIGNAL \banc~1254_combout\ : std_logic;
SIGNAL \banc~1367_combout\ : std_logic;
SIGNAL \banc~1258_combout\ : std_logic;
SIGNAL \banc~1368_combout\ : std_logic;
SIGNAL \banc~1262_combout\ : std_logic;
SIGNAL \banc~1369_combout\ : std_logic;
SIGNAL \banc~1266_combout\ : std_logic;
SIGNAL \banc~1370_combout\ : std_logic;
SIGNAL \banc~1270_combout\ : std_logic;
SIGNAL \banc~1371_combout\ : std_logic;
SIGNAL \banc~1274_combout\ : std_logic;
SIGNAL \banc~1372_combout\ : std_logic;
SIGNAL \banc~1278_combout\ : std_logic;
SIGNAL \banc~1373_combout\ : std_logic;
SIGNAL \banc~1282_combout\ : std_logic;
SIGNAL \banc~1374_combout\ : std_logic;
SIGNAL \banc~1286_combout\ : std_logic;
SIGNAL \banc~1375_combout\ : std_logic;
SIGNAL \banc~1290_combout\ : std_logic;
SIGNAL \banc~1376_combout\ : std_logic;
SIGNAL \banc~1294_combout\ : std_logic;
SIGNAL \banc~1377_combout\ : std_logic;
SIGNAL \banc~1298_combout\ : std_logic;
SIGNAL \banc~1378_combout\ : std_logic;
SIGNAL \banc~1302_combout\ : std_logic;
SIGNAL \banc~1379_combout\ : std_logic;
SIGNAL \banc~1306_combout\ : std_logic;
SIGNAL \banc~1380_combout\ : std_logic;
SIGNAL \banc~1310_combout\ : std_logic;
SIGNAL \banc~1381_combout\ : std_logic;
SIGNAL \banc~1314_combout\ : std_logic;
SIGNAL \ALT_INV_BusW[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_BusW[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_BusW[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_BusW[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_BusW[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_BusW[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_BusW[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_BusW[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_BusW[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_BusW[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_BusW[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_BusW[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_BusW[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_BusW[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_BusW[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_BusW[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_BusW[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_BusW[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_BusW[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_BusW[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_BusW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_BusW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_BusW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_BusW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_BusW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_BusW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_BusW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_BusW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_we~input_o\ : std_logic;
SIGNAL \ALT_INV_RW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_RW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_RW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_BusW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_RB[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_RB[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_RB[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_RA[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_RA[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_RA[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_banc~1381_combout\ : std_logic;
SIGNAL \ALT_INV_banc~1380_combout\ : std_logic;
SIGNAL \ALT_INV_banc~1379_combout\ : std_logic;
SIGNAL \ALT_INV_banc~1378_combout\ : std_logic;
SIGNAL \ALT_INV_banc~1377_combout\ : std_logic;
SIGNAL \ALT_INV_banc~1376_combout\ : std_logic;
SIGNAL \ALT_INV_banc~1375_combout\ : std_logic;
SIGNAL \ALT_INV_banc~1374_combout\ : std_logic;
SIGNAL \ALT_INV_banc~1373_combout\ : std_logic;
SIGNAL \ALT_INV_banc~1372_combout\ : std_logic;
SIGNAL \ALT_INV_banc~1371_combout\ : std_logic;
SIGNAL \ALT_INV_banc~1370_combout\ : std_logic;
SIGNAL \ALT_INV_banc~1369_combout\ : std_logic;
SIGNAL \ALT_INV_banc~1368_combout\ : std_logic;
SIGNAL \ALT_INV_banc~1367_combout\ : std_logic;
SIGNAL \ALT_INV_banc~1366_combout\ : std_logic;
SIGNAL \ALT_INV_banc~1365_combout\ : std_logic;
SIGNAL \ALT_INV_banc~1364_combout\ : std_logic;
SIGNAL \ALT_INV_banc~1363_combout\ : std_logic;
SIGNAL \ALT_INV_banc~1362_combout\ : std_logic;
SIGNAL \ALT_INV_banc~1361_combout\ : std_logic;
SIGNAL \ALT_INV_banc~1360_combout\ : std_logic;
SIGNAL \ALT_INV_banc~1359_combout\ : std_logic;
SIGNAL \ALT_INV_banc~1358_combout\ : std_logic;
SIGNAL \ALT_INV_banc~1357_combout\ : std_logic;
SIGNAL \ALT_INV_banc~1356_combout\ : std_logic;
SIGNAL \ALT_INV_banc~1355_combout\ : std_logic;
SIGNAL \ALT_INV_banc~1354_combout\ : std_logic;
SIGNAL \ALT_INV_banc~1353_combout\ : std_logic;
SIGNAL \ALT_INV_banc~1352_combout\ : std_logic;
SIGNAL \ALT_INV_banc~1351_combout\ : std_logic;
SIGNAL \ALT_INV_banc~1350_combout\ : std_logic;
SIGNAL \ALT_INV_banc~261_q\ : std_logic;
SIGNAL \ALT_INV_banc~1349_combout\ : std_logic;
SIGNAL \ALT_INV_banc~133_q\ : std_logic;
SIGNAL \ALT_INV_banc~165_q\ : std_logic;
SIGNAL \ALT_INV_banc~101_q\ : std_logic;
SIGNAL \ALT_INV_banc~197_q\ : std_logic;
SIGNAL \ALT_INV_banc~293_q\ : std_logic;
SIGNAL \ALT_INV_banc~229_q\ : std_logic;
SIGNAL \ALT_INV_banc~260_q\ : std_logic;
SIGNAL \ALT_INV_banc~1348_combout\ : std_logic;
SIGNAL \ALT_INV_banc~132_q\ : std_logic;
SIGNAL \ALT_INV_banc~164_q\ : std_logic;
SIGNAL \ALT_INV_banc~100_q\ : std_logic;
SIGNAL \ALT_INV_banc~196_q\ : std_logic;
SIGNAL \ALT_INV_banc~292_q\ : std_logic;
SIGNAL \ALT_INV_banc~228_q\ : std_logic;
SIGNAL \ALT_INV_banc~259_q\ : std_logic;
SIGNAL \ALT_INV_banc~1347_combout\ : std_logic;
SIGNAL \ALT_INV_banc~131_q\ : std_logic;
SIGNAL \ALT_INV_banc~163_q\ : std_logic;
SIGNAL \ALT_INV_banc~99_q\ : std_logic;
SIGNAL \ALT_INV_banc~195_q\ : std_logic;
SIGNAL \ALT_INV_banc~291_q\ : std_logic;
SIGNAL \ALT_INV_banc~227_q\ : std_logic;
SIGNAL \ALT_INV_banc~258_q\ : std_logic;
SIGNAL \ALT_INV_banc~1346_combout\ : std_logic;
SIGNAL \ALT_INV_banc~130_q\ : std_logic;
SIGNAL \ALT_INV_banc~162_q\ : std_logic;
SIGNAL \ALT_INV_banc~98_q\ : std_logic;
SIGNAL \ALT_INV_banc~194_q\ : std_logic;
SIGNAL \ALT_INV_banc~290_q\ : std_logic;
SIGNAL \ALT_INV_banc~226_q\ : std_logic;
SIGNAL \ALT_INV_banc~257_q\ : std_logic;
SIGNAL \ALT_INV_banc~1345_combout\ : std_logic;
SIGNAL \ALT_INV_banc~129_q\ : std_logic;
SIGNAL \ALT_INV_banc~161_q\ : std_logic;
SIGNAL \ALT_INV_banc~97_q\ : std_logic;
SIGNAL \ALT_INV_banc~193_q\ : std_logic;
SIGNAL \ALT_INV_banc~289_q\ : std_logic;
SIGNAL \ALT_INV_banc~225_q\ : std_logic;
SIGNAL \ALT_INV_banc~256_q\ : std_logic;
SIGNAL \ALT_INV_banc~1344_combout\ : std_logic;
SIGNAL \ALT_INV_banc~128_q\ : std_logic;
SIGNAL \ALT_INV_banc~160_q\ : std_logic;
SIGNAL \ALT_INV_banc~96_q\ : std_logic;
SIGNAL \ALT_INV_banc~192_q\ : std_logic;
SIGNAL \ALT_INV_banc~288_q\ : std_logic;
SIGNAL \ALT_INV_banc~224_q\ : std_logic;
SIGNAL \ALT_INV_banc~255_q\ : std_logic;
SIGNAL \ALT_INV_banc~1343_combout\ : std_logic;
SIGNAL \ALT_INV_banc~127_q\ : std_logic;
SIGNAL \ALT_INV_banc~159_q\ : std_logic;
SIGNAL \ALT_INV_banc~95_q\ : std_logic;
SIGNAL \ALT_INV_banc~191_q\ : std_logic;
SIGNAL \ALT_INV_banc~287_q\ : std_logic;
SIGNAL \ALT_INV_banc~223_q\ : std_logic;
SIGNAL \ALT_INV_banc~254_q\ : std_logic;
SIGNAL \ALT_INV_banc~1342_combout\ : std_logic;
SIGNAL \ALT_INV_banc~126_q\ : std_logic;
SIGNAL \ALT_INV_banc~158_q\ : std_logic;
SIGNAL \ALT_INV_banc~94_q\ : std_logic;
SIGNAL \ALT_INV_banc~190_q\ : std_logic;
SIGNAL \ALT_INV_banc~286_q\ : std_logic;
SIGNAL \ALT_INV_banc~222_q\ : std_logic;
SIGNAL \ALT_INV_banc~253_q\ : std_logic;
SIGNAL \ALT_INV_banc~1341_combout\ : std_logic;
SIGNAL \ALT_INV_banc~125_q\ : std_logic;
SIGNAL \ALT_INV_banc~157_q\ : std_logic;
SIGNAL \ALT_INV_banc~93_q\ : std_logic;
SIGNAL \ALT_INV_banc~189_q\ : std_logic;
SIGNAL \ALT_INV_banc~285_q\ : std_logic;
SIGNAL \ALT_INV_banc~221_q\ : std_logic;
SIGNAL \ALT_INV_banc~252_q\ : std_logic;
SIGNAL \ALT_INV_banc~1340_combout\ : std_logic;
SIGNAL \ALT_INV_banc~124_q\ : std_logic;
SIGNAL \ALT_INV_banc~156_q\ : std_logic;
SIGNAL \ALT_INV_banc~92_q\ : std_logic;
SIGNAL \ALT_INV_banc~188_q\ : std_logic;
SIGNAL \ALT_INV_banc~284_q\ : std_logic;
SIGNAL \ALT_INV_banc~220_q\ : std_logic;
SIGNAL \ALT_INV_banc~251_q\ : std_logic;
SIGNAL \ALT_INV_banc~1339_combout\ : std_logic;
SIGNAL \ALT_INV_banc~123_q\ : std_logic;
SIGNAL \ALT_INV_banc~155_q\ : std_logic;
SIGNAL \ALT_INV_banc~91_q\ : std_logic;
SIGNAL \ALT_INV_banc~187_q\ : std_logic;
SIGNAL \ALT_INV_banc~283_q\ : std_logic;
SIGNAL \ALT_INV_banc~219_q\ : std_logic;
SIGNAL \ALT_INV_banc~250_q\ : std_logic;
SIGNAL \ALT_INV_banc~1338_combout\ : std_logic;
SIGNAL \ALT_INV_banc~122_q\ : std_logic;
SIGNAL \ALT_INV_banc~154_q\ : std_logic;
SIGNAL \ALT_INV_banc~90_q\ : std_logic;
SIGNAL \ALT_INV_banc~186_q\ : std_logic;
SIGNAL \ALT_INV_banc~282_q\ : std_logic;
SIGNAL \ALT_INV_banc~218_q\ : std_logic;
SIGNAL \ALT_INV_banc~249_q\ : std_logic;
SIGNAL \ALT_INV_banc~1337_combout\ : std_logic;
SIGNAL \ALT_INV_banc~121_q\ : std_logic;
SIGNAL \ALT_INV_banc~153_q\ : std_logic;
SIGNAL \ALT_INV_banc~89_q\ : std_logic;
SIGNAL \ALT_INV_banc~185_q\ : std_logic;
SIGNAL \ALT_INV_banc~281_q\ : std_logic;
SIGNAL \ALT_INV_banc~217_q\ : std_logic;
SIGNAL \ALT_INV_banc~248_q\ : std_logic;
SIGNAL \ALT_INV_banc~1336_combout\ : std_logic;
SIGNAL \ALT_INV_banc~120_q\ : std_logic;
SIGNAL \ALT_INV_banc~152_q\ : std_logic;
SIGNAL \ALT_INV_banc~88_q\ : std_logic;
SIGNAL \ALT_INV_banc~184_q\ : std_logic;
SIGNAL \ALT_INV_banc~280_q\ : std_logic;
SIGNAL \ALT_INV_banc~216_q\ : std_logic;
SIGNAL \ALT_INV_banc~247_q\ : std_logic;
SIGNAL \ALT_INV_banc~1335_combout\ : std_logic;
SIGNAL \ALT_INV_banc~119_q\ : std_logic;
SIGNAL \ALT_INV_banc~151_q\ : std_logic;
SIGNAL \ALT_INV_banc~87_q\ : std_logic;
SIGNAL \ALT_INV_banc~183_q\ : std_logic;
SIGNAL \ALT_INV_banc~279_q\ : std_logic;
SIGNAL \ALT_INV_banc~215_q\ : std_logic;
SIGNAL \ALT_INV_banc~246_q\ : std_logic;
SIGNAL \ALT_INV_banc~1334_combout\ : std_logic;
SIGNAL \ALT_INV_banc~118_q\ : std_logic;
SIGNAL \ALT_INV_banc~150_q\ : std_logic;
SIGNAL \ALT_INV_banc~86_q\ : std_logic;
SIGNAL \ALT_INV_banc~182_q\ : std_logic;
SIGNAL \ALT_INV_banc~278_q\ : std_logic;
SIGNAL \ALT_INV_banc~214_q\ : std_logic;
SIGNAL \ALT_INV_banc~245_q\ : std_logic;
SIGNAL \ALT_INV_banc~1333_combout\ : std_logic;
SIGNAL \ALT_INV_banc~117_q\ : std_logic;
SIGNAL \ALT_INV_banc~149_q\ : std_logic;
SIGNAL \ALT_INV_banc~85_q\ : std_logic;
SIGNAL \ALT_INV_banc~181_q\ : std_logic;
SIGNAL \ALT_INV_banc~277_q\ : std_logic;
SIGNAL \ALT_INV_banc~213_q\ : std_logic;
SIGNAL \ALT_INV_banc~244_q\ : std_logic;
SIGNAL \ALT_INV_banc~1332_combout\ : std_logic;
SIGNAL \ALT_INV_banc~116_q\ : std_logic;
SIGNAL \ALT_INV_banc~148_q\ : std_logic;
SIGNAL \ALT_INV_banc~84_q\ : std_logic;
SIGNAL \ALT_INV_banc~180_q\ : std_logic;
SIGNAL \ALT_INV_banc~276_q\ : std_logic;
SIGNAL \ALT_INV_banc~212_q\ : std_logic;
SIGNAL \ALT_INV_banc~243_q\ : std_logic;
SIGNAL \ALT_INV_banc~1331_combout\ : std_logic;
SIGNAL \ALT_INV_banc~115_q\ : std_logic;
SIGNAL \ALT_INV_banc~147_q\ : std_logic;
SIGNAL \ALT_INV_banc~83_q\ : std_logic;
SIGNAL \ALT_INV_banc~179_q\ : std_logic;
SIGNAL \ALT_INV_banc~275_q\ : std_logic;
SIGNAL \ALT_INV_banc~211_q\ : std_logic;
SIGNAL \ALT_INV_banc~242_q\ : std_logic;
SIGNAL \ALT_INV_banc~1330_combout\ : std_logic;
SIGNAL \ALT_INV_banc~114_q\ : std_logic;
SIGNAL \ALT_INV_banc~146_q\ : std_logic;
SIGNAL \ALT_INV_banc~82_q\ : std_logic;
SIGNAL \ALT_INV_banc~178_q\ : std_logic;
SIGNAL \ALT_INV_banc~274_q\ : std_logic;
SIGNAL \ALT_INV_banc~210_q\ : std_logic;
SIGNAL \ALT_INV_banc~241_q\ : std_logic;
SIGNAL \ALT_INV_banc~1329_combout\ : std_logic;
SIGNAL \ALT_INV_banc~113_q\ : std_logic;
SIGNAL \ALT_INV_banc~145_q\ : std_logic;
SIGNAL \ALT_INV_banc~81_q\ : std_logic;
SIGNAL \ALT_INV_banc~177_q\ : std_logic;
SIGNAL \ALT_INV_banc~273_q\ : std_logic;
SIGNAL \ALT_INV_banc~209_q\ : std_logic;
SIGNAL \ALT_INV_banc~240_q\ : std_logic;
SIGNAL \ALT_INV_banc~1328_combout\ : std_logic;
SIGNAL \ALT_INV_banc~112_q\ : std_logic;
SIGNAL \ALT_INV_banc~144_q\ : std_logic;
SIGNAL \ALT_INV_banc~80_q\ : std_logic;
SIGNAL \ALT_INV_banc~176_q\ : std_logic;
SIGNAL \ALT_INV_banc~272_q\ : std_logic;
SIGNAL \ALT_INV_banc~208_q\ : std_logic;
SIGNAL \ALT_INV_banc~239_q\ : std_logic;
SIGNAL \ALT_INV_banc~1327_combout\ : std_logic;
SIGNAL \ALT_INV_banc~111_q\ : std_logic;
SIGNAL \ALT_INV_banc~143_q\ : std_logic;
SIGNAL \ALT_INV_banc~79_q\ : std_logic;
SIGNAL \ALT_INV_banc~175_q\ : std_logic;
SIGNAL \ALT_INV_banc~271_q\ : std_logic;
SIGNAL \ALT_INV_banc~207_q\ : std_logic;
SIGNAL \ALT_INV_banc~238_q\ : std_logic;
SIGNAL \ALT_INV_banc~1326_combout\ : std_logic;
SIGNAL \ALT_INV_banc~110_q\ : std_logic;
SIGNAL \ALT_INV_banc~142_q\ : std_logic;
SIGNAL \ALT_INV_banc~78_q\ : std_logic;
SIGNAL \ALT_INV_banc~174_q\ : std_logic;
SIGNAL \ALT_INV_banc~270_q\ : std_logic;
SIGNAL \ALT_INV_banc~206_q\ : std_logic;
SIGNAL \ALT_INV_banc~237_q\ : std_logic;
SIGNAL \ALT_INV_banc~1325_combout\ : std_logic;
SIGNAL \ALT_INV_banc~109_q\ : std_logic;
SIGNAL \ALT_INV_banc~141_q\ : std_logic;
SIGNAL \ALT_INV_banc~77_q\ : std_logic;
SIGNAL \ALT_INV_banc~173_q\ : std_logic;
SIGNAL \ALT_INV_banc~269_q\ : std_logic;
SIGNAL \ALT_INV_banc~205_q\ : std_logic;
SIGNAL \ALT_INV_banc~236_q\ : std_logic;
SIGNAL \ALT_INV_banc~1324_combout\ : std_logic;
SIGNAL \ALT_INV_banc~108_q\ : std_logic;
SIGNAL \ALT_INV_banc~140_q\ : std_logic;
SIGNAL \ALT_INV_banc~76_q\ : std_logic;
SIGNAL \ALT_INV_banc~172_q\ : std_logic;
SIGNAL \ALT_INV_banc~268_q\ : std_logic;
SIGNAL \ALT_INV_banc~204_q\ : std_logic;
SIGNAL \ALT_INV_banc~235_q\ : std_logic;
SIGNAL \ALT_INV_banc~1323_combout\ : std_logic;
SIGNAL \ALT_INV_banc~107_q\ : std_logic;
SIGNAL \ALT_INV_banc~139_q\ : std_logic;
SIGNAL \ALT_INV_banc~75_q\ : std_logic;
SIGNAL \ALT_INV_banc~171_q\ : std_logic;
SIGNAL \ALT_INV_banc~267_q\ : std_logic;
SIGNAL \ALT_INV_banc~203_q\ : std_logic;
SIGNAL \ALT_INV_banc~234_q\ : std_logic;
SIGNAL \ALT_INV_banc~1322_combout\ : std_logic;
SIGNAL \ALT_INV_banc~106_q\ : std_logic;
SIGNAL \ALT_INV_banc~138_q\ : std_logic;
SIGNAL \ALT_INV_banc~74_q\ : std_logic;
SIGNAL \ALT_INV_banc~170_q\ : std_logic;
SIGNAL \ALT_INV_banc~266_q\ : std_logic;
SIGNAL \ALT_INV_banc~202_q\ : std_logic;
SIGNAL \ALT_INV_banc~233_q\ : std_logic;
SIGNAL \ALT_INV_banc~1321_combout\ : std_logic;
SIGNAL \ALT_INV_banc~105_q\ : std_logic;
SIGNAL \ALT_INV_banc~137_q\ : std_logic;
SIGNAL \ALT_INV_banc~73_q\ : std_logic;
SIGNAL \ALT_INV_banc~169_q\ : std_logic;
SIGNAL \ALT_INV_banc~265_q\ : std_logic;
SIGNAL \ALT_INV_banc~201_q\ : std_logic;
SIGNAL \ALT_INV_banc~232_q\ : std_logic;
SIGNAL \ALT_INV_banc~1320_combout\ : std_logic;
SIGNAL \ALT_INV_banc~104_q\ : std_logic;
SIGNAL \ALT_INV_banc~136_q\ : std_logic;
SIGNAL \ALT_INV_banc~72_q\ : std_logic;
SIGNAL \ALT_INV_banc~168_q\ : std_logic;
SIGNAL \ALT_INV_banc~264_q\ : std_logic;
SIGNAL \ALT_INV_banc~200_q\ : std_logic;
SIGNAL \ALT_INV_banc~231_q\ : std_logic;
SIGNAL \ALT_INV_banc~1319_combout\ : std_logic;
SIGNAL \ALT_INV_banc~103_q\ : std_logic;
SIGNAL \ALT_INV_banc~135_q\ : std_logic;
SIGNAL \ALT_INV_banc~71_q\ : std_logic;
SIGNAL \ALT_INV_banc~167_q\ : std_logic;
SIGNAL \ALT_INV_banc~263_q\ : std_logic;
SIGNAL \ALT_INV_banc~199_q\ : std_logic;
SIGNAL \ALT_INV_banc~230_q\ : std_logic;
SIGNAL \ALT_INV_banc~1318_combout\ : std_logic;
SIGNAL \ALT_INV_banc~102_q\ : std_logic;
SIGNAL \ALT_INV_banc~134_q\ : std_logic;
SIGNAL \ALT_INV_banc~70_q\ : std_logic;
SIGNAL \ALT_INV_banc~166_q\ : std_logic;
SIGNAL \ALT_INV_banc~262_q\ : std_logic;
SIGNAL \ALT_INV_banc~198_q\ : std_logic;

BEGIN

BusA <= ww_BusA;
BusB <= ww_BusB;
ww_BusW <= BusW;
ww_clk <= clk;
ww_RA <= RA;
ww_RB <= RB;
ww_RW <= RW;
ww_we <= we;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_BusW[31]~input_o\ <= NOT \BusW[31]~input_o\;
\ALT_INV_BusW[30]~input_o\ <= NOT \BusW[30]~input_o\;
\ALT_INV_BusW[29]~input_o\ <= NOT \BusW[29]~input_o\;
\ALT_INV_BusW[28]~input_o\ <= NOT \BusW[28]~input_o\;
\ALT_INV_BusW[27]~input_o\ <= NOT \BusW[27]~input_o\;
\ALT_INV_BusW[26]~input_o\ <= NOT \BusW[26]~input_o\;
\ALT_INV_BusW[25]~input_o\ <= NOT \BusW[25]~input_o\;
\ALT_INV_BusW[24]~input_o\ <= NOT \BusW[24]~input_o\;
\ALT_INV_BusW[23]~input_o\ <= NOT \BusW[23]~input_o\;
\ALT_INV_BusW[22]~input_o\ <= NOT \BusW[22]~input_o\;
\ALT_INV_BusW[21]~input_o\ <= NOT \BusW[21]~input_o\;
\ALT_INV_BusW[20]~input_o\ <= NOT \BusW[20]~input_o\;
\ALT_INV_BusW[19]~input_o\ <= NOT \BusW[19]~input_o\;
\ALT_INV_BusW[16]~input_o\ <= NOT \BusW[16]~input_o\;
\ALT_INV_BusW[15]~input_o\ <= NOT \BusW[15]~input_o\;
\ALT_INV_BusW[14]~input_o\ <= NOT \BusW[14]~input_o\;
\ALT_INV_BusW[13]~input_o\ <= NOT \BusW[13]~input_o\;
\ALT_INV_BusW[12]~input_o\ <= NOT \BusW[12]~input_o\;
\ALT_INV_BusW[11]~input_o\ <= NOT \BusW[11]~input_o\;
\ALT_INV_BusW[10]~input_o\ <= NOT \BusW[10]~input_o\;
\ALT_INV_BusW[9]~input_o\ <= NOT \BusW[9]~input_o\;
\ALT_INV_BusW[8]~input_o\ <= NOT \BusW[8]~input_o\;
\ALT_INV_BusW[7]~input_o\ <= NOT \BusW[7]~input_o\;
\ALT_INV_BusW[6]~input_o\ <= NOT \BusW[6]~input_o\;
\ALT_INV_BusW[5]~input_o\ <= NOT \BusW[5]~input_o\;
\ALT_INV_BusW[3]~input_o\ <= NOT \BusW[3]~input_o\;
\ALT_INV_BusW[2]~input_o\ <= NOT \BusW[2]~input_o\;
\ALT_INV_BusW[1]~input_o\ <= NOT \BusW[1]~input_o\;
\ALT_INV_we~input_o\ <= NOT \we~input_o\;
\ALT_INV_RW[0]~input_o\ <= NOT \RW[0]~input_o\;
\ALT_INV_RW[2]~input_o\ <= NOT \RW[2]~input_o\;
\ALT_INV_RW[1]~input_o\ <= NOT \RW[1]~input_o\;
\ALT_INV_BusW[0]~input_o\ <= NOT \BusW[0]~input_o\;
\ALT_INV_RB[0]~input_o\ <= NOT \RB[0]~input_o\;
\ALT_INV_RB[1]~input_o\ <= NOT \RB[1]~input_o\;
\ALT_INV_RB[2]~input_o\ <= NOT \RB[2]~input_o\;
\ALT_INV_RA[0]~input_o\ <= NOT \RA[0]~input_o\;
\ALT_INV_RA[1]~input_o\ <= NOT \RA[1]~input_o\;
\ALT_INV_RA[2]~input_o\ <= NOT \RA[2]~input_o\;
\ALT_INV_banc~1381_combout\ <= NOT \banc~1381_combout\;
\ALT_INV_banc~1380_combout\ <= NOT \banc~1380_combout\;
\ALT_INV_banc~1379_combout\ <= NOT \banc~1379_combout\;
\ALT_INV_banc~1378_combout\ <= NOT \banc~1378_combout\;
\ALT_INV_banc~1377_combout\ <= NOT \banc~1377_combout\;
\ALT_INV_banc~1376_combout\ <= NOT \banc~1376_combout\;
\ALT_INV_banc~1375_combout\ <= NOT \banc~1375_combout\;
\ALT_INV_banc~1374_combout\ <= NOT \banc~1374_combout\;
\ALT_INV_banc~1373_combout\ <= NOT \banc~1373_combout\;
\ALT_INV_banc~1372_combout\ <= NOT \banc~1372_combout\;
\ALT_INV_banc~1371_combout\ <= NOT \banc~1371_combout\;
\ALT_INV_banc~1370_combout\ <= NOT \banc~1370_combout\;
\ALT_INV_banc~1369_combout\ <= NOT \banc~1369_combout\;
\ALT_INV_banc~1368_combout\ <= NOT \banc~1368_combout\;
\ALT_INV_banc~1367_combout\ <= NOT \banc~1367_combout\;
\ALT_INV_banc~1366_combout\ <= NOT \banc~1366_combout\;
\ALT_INV_banc~1365_combout\ <= NOT \banc~1365_combout\;
\ALT_INV_banc~1364_combout\ <= NOT \banc~1364_combout\;
\ALT_INV_banc~1363_combout\ <= NOT \banc~1363_combout\;
\ALT_INV_banc~1362_combout\ <= NOT \banc~1362_combout\;
\ALT_INV_banc~1361_combout\ <= NOT \banc~1361_combout\;
\ALT_INV_banc~1360_combout\ <= NOT \banc~1360_combout\;
\ALT_INV_banc~1359_combout\ <= NOT \banc~1359_combout\;
\ALT_INV_banc~1358_combout\ <= NOT \banc~1358_combout\;
\ALT_INV_banc~1357_combout\ <= NOT \banc~1357_combout\;
\ALT_INV_banc~1356_combout\ <= NOT \banc~1356_combout\;
\ALT_INV_banc~1355_combout\ <= NOT \banc~1355_combout\;
\ALT_INV_banc~1354_combout\ <= NOT \banc~1354_combout\;
\ALT_INV_banc~1353_combout\ <= NOT \banc~1353_combout\;
\ALT_INV_banc~1352_combout\ <= NOT \banc~1352_combout\;
\ALT_INV_banc~1351_combout\ <= NOT \banc~1351_combout\;
\ALT_INV_banc~1350_combout\ <= NOT \banc~1350_combout\;
\ALT_INV_banc~261_q\ <= NOT \banc~261_q\;
\ALT_INV_banc~1349_combout\ <= NOT \banc~1349_combout\;
\ALT_INV_banc~133_q\ <= NOT \banc~133_q\;
\ALT_INV_banc~165_q\ <= NOT \banc~165_q\;
\ALT_INV_banc~101_q\ <= NOT \banc~101_q\;
\ALT_INV_banc~197_q\ <= NOT \banc~197_q\;
\ALT_INV_banc~293_q\ <= NOT \banc~293_q\;
\ALT_INV_banc~229_q\ <= NOT \banc~229_q\;
\ALT_INV_banc~260_q\ <= NOT \banc~260_q\;
\ALT_INV_banc~1348_combout\ <= NOT \banc~1348_combout\;
\ALT_INV_banc~132_q\ <= NOT \banc~132_q\;
\ALT_INV_banc~164_q\ <= NOT \banc~164_q\;
\ALT_INV_banc~100_q\ <= NOT \banc~100_q\;
\ALT_INV_banc~196_q\ <= NOT \banc~196_q\;
\ALT_INV_banc~292_q\ <= NOT \banc~292_q\;
\ALT_INV_banc~228_q\ <= NOT \banc~228_q\;
\ALT_INV_banc~259_q\ <= NOT \banc~259_q\;
\ALT_INV_banc~1347_combout\ <= NOT \banc~1347_combout\;
\ALT_INV_banc~131_q\ <= NOT \banc~131_q\;
\ALT_INV_banc~163_q\ <= NOT \banc~163_q\;
\ALT_INV_banc~99_q\ <= NOT \banc~99_q\;
\ALT_INV_banc~195_q\ <= NOT \banc~195_q\;
\ALT_INV_banc~291_q\ <= NOT \banc~291_q\;
\ALT_INV_banc~227_q\ <= NOT \banc~227_q\;
\ALT_INV_banc~258_q\ <= NOT \banc~258_q\;
\ALT_INV_banc~1346_combout\ <= NOT \banc~1346_combout\;
\ALT_INV_banc~130_q\ <= NOT \banc~130_q\;
\ALT_INV_banc~162_q\ <= NOT \banc~162_q\;
\ALT_INV_banc~98_q\ <= NOT \banc~98_q\;
\ALT_INV_banc~194_q\ <= NOT \banc~194_q\;
\ALT_INV_banc~290_q\ <= NOT \banc~290_q\;
\ALT_INV_banc~226_q\ <= NOT \banc~226_q\;
\ALT_INV_banc~257_q\ <= NOT \banc~257_q\;
\ALT_INV_banc~1345_combout\ <= NOT \banc~1345_combout\;
\ALT_INV_banc~129_q\ <= NOT \banc~129_q\;
\ALT_INV_banc~161_q\ <= NOT \banc~161_q\;
\ALT_INV_banc~97_q\ <= NOT \banc~97_q\;
\ALT_INV_banc~193_q\ <= NOT \banc~193_q\;
\ALT_INV_banc~289_q\ <= NOT \banc~289_q\;
\ALT_INV_banc~225_q\ <= NOT \banc~225_q\;
\ALT_INV_banc~256_q\ <= NOT \banc~256_q\;
\ALT_INV_banc~1344_combout\ <= NOT \banc~1344_combout\;
\ALT_INV_banc~128_q\ <= NOT \banc~128_q\;
\ALT_INV_banc~160_q\ <= NOT \banc~160_q\;
\ALT_INV_banc~96_q\ <= NOT \banc~96_q\;
\ALT_INV_banc~192_q\ <= NOT \banc~192_q\;
\ALT_INV_banc~288_q\ <= NOT \banc~288_q\;
\ALT_INV_banc~224_q\ <= NOT \banc~224_q\;
\ALT_INV_banc~255_q\ <= NOT \banc~255_q\;
\ALT_INV_banc~1343_combout\ <= NOT \banc~1343_combout\;
\ALT_INV_banc~127_q\ <= NOT \banc~127_q\;
\ALT_INV_banc~159_q\ <= NOT \banc~159_q\;
\ALT_INV_banc~95_q\ <= NOT \banc~95_q\;
\ALT_INV_banc~191_q\ <= NOT \banc~191_q\;
\ALT_INV_banc~287_q\ <= NOT \banc~287_q\;
\ALT_INV_banc~223_q\ <= NOT \banc~223_q\;
\ALT_INV_banc~254_q\ <= NOT \banc~254_q\;
\ALT_INV_banc~1342_combout\ <= NOT \banc~1342_combout\;
\ALT_INV_banc~126_q\ <= NOT \banc~126_q\;
\ALT_INV_banc~158_q\ <= NOT \banc~158_q\;
\ALT_INV_banc~94_q\ <= NOT \banc~94_q\;
\ALT_INV_banc~190_q\ <= NOT \banc~190_q\;
\ALT_INV_banc~286_q\ <= NOT \banc~286_q\;
\ALT_INV_banc~222_q\ <= NOT \banc~222_q\;
\ALT_INV_banc~253_q\ <= NOT \banc~253_q\;
\ALT_INV_banc~1341_combout\ <= NOT \banc~1341_combout\;
\ALT_INV_banc~125_q\ <= NOT \banc~125_q\;
\ALT_INV_banc~157_q\ <= NOT \banc~157_q\;
\ALT_INV_banc~93_q\ <= NOT \banc~93_q\;
\ALT_INV_banc~189_q\ <= NOT \banc~189_q\;
\ALT_INV_banc~285_q\ <= NOT \banc~285_q\;
\ALT_INV_banc~221_q\ <= NOT \banc~221_q\;
\ALT_INV_banc~252_q\ <= NOT \banc~252_q\;
\ALT_INV_banc~1340_combout\ <= NOT \banc~1340_combout\;
\ALT_INV_banc~124_q\ <= NOT \banc~124_q\;
\ALT_INV_banc~156_q\ <= NOT \banc~156_q\;
\ALT_INV_banc~92_q\ <= NOT \banc~92_q\;
\ALT_INV_banc~188_q\ <= NOT \banc~188_q\;
\ALT_INV_banc~284_q\ <= NOT \banc~284_q\;
\ALT_INV_banc~220_q\ <= NOT \banc~220_q\;
\ALT_INV_banc~251_q\ <= NOT \banc~251_q\;
\ALT_INV_banc~1339_combout\ <= NOT \banc~1339_combout\;
\ALT_INV_banc~123_q\ <= NOT \banc~123_q\;
\ALT_INV_banc~155_q\ <= NOT \banc~155_q\;
\ALT_INV_banc~91_q\ <= NOT \banc~91_q\;
\ALT_INV_banc~187_q\ <= NOT \banc~187_q\;
\ALT_INV_banc~283_q\ <= NOT \banc~283_q\;
\ALT_INV_banc~219_q\ <= NOT \banc~219_q\;
\ALT_INV_banc~250_q\ <= NOT \banc~250_q\;
\ALT_INV_banc~1338_combout\ <= NOT \banc~1338_combout\;
\ALT_INV_banc~122_q\ <= NOT \banc~122_q\;
\ALT_INV_banc~154_q\ <= NOT \banc~154_q\;
\ALT_INV_banc~90_q\ <= NOT \banc~90_q\;
\ALT_INV_banc~186_q\ <= NOT \banc~186_q\;
\ALT_INV_banc~282_q\ <= NOT \banc~282_q\;
\ALT_INV_banc~218_q\ <= NOT \banc~218_q\;
\ALT_INV_banc~249_q\ <= NOT \banc~249_q\;
\ALT_INV_banc~1337_combout\ <= NOT \banc~1337_combout\;
\ALT_INV_banc~121_q\ <= NOT \banc~121_q\;
\ALT_INV_banc~153_q\ <= NOT \banc~153_q\;
\ALT_INV_banc~89_q\ <= NOT \banc~89_q\;
\ALT_INV_banc~185_q\ <= NOT \banc~185_q\;
\ALT_INV_banc~281_q\ <= NOT \banc~281_q\;
\ALT_INV_banc~217_q\ <= NOT \banc~217_q\;
\ALT_INV_banc~248_q\ <= NOT \banc~248_q\;
\ALT_INV_banc~1336_combout\ <= NOT \banc~1336_combout\;
\ALT_INV_banc~120_q\ <= NOT \banc~120_q\;
\ALT_INV_banc~152_q\ <= NOT \banc~152_q\;
\ALT_INV_banc~88_q\ <= NOT \banc~88_q\;
\ALT_INV_banc~184_q\ <= NOT \banc~184_q\;
\ALT_INV_banc~280_q\ <= NOT \banc~280_q\;
\ALT_INV_banc~216_q\ <= NOT \banc~216_q\;
\ALT_INV_banc~247_q\ <= NOT \banc~247_q\;
\ALT_INV_banc~1335_combout\ <= NOT \banc~1335_combout\;
\ALT_INV_banc~119_q\ <= NOT \banc~119_q\;
\ALT_INV_banc~151_q\ <= NOT \banc~151_q\;
\ALT_INV_banc~87_q\ <= NOT \banc~87_q\;
\ALT_INV_banc~183_q\ <= NOT \banc~183_q\;
\ALT_INV_banc~279_q\ <= NOT \banc~279_q\;
\ALT_INV_banc~215_q\ <= NOT \banc~215_q\;
\ALT_INV_banc~246_q\ <= NOT \banc~246_q\;
\ALT_INV_banc~1334_combout\ <= NOT \banc~1334_combout\;
\ALT_INV_banc~118_q\ <= NOT \banc~118_q\;
\ALT_INV_banc~150_q\ <= NOT \banc~150_q\;
\ALT_INV_banc~86_q\ <= NOT \banc~86_q\;
\ALT_INV_banc~182_q\ <= NOT \banc~182_q\;
\ALT_INV_banc~278_q\ <= NOT \banc~278_q\;
\ALT_INV_banc~214_q\ <= NOT \banc~214_q\;
\ALT_INV_banc~245_q\ <= NOT \banc~245_q\;
\ALT_INV_banc~1333_combout\ <= NOT \banc~1333_combout\;
\ALT_INV_banc~117_q\ <= NOT \banc~117_q\;
\ALT_INV_banc~149_q\ <= NOT \banc~149_q\;
\ALT_INV_banc~85_q\ <= NOT \banc~85_q\;
\ALT_INV_banc~181_q\ <= NOT \banc~181_q\;
\ALT_INV_banc~277_q\ <= NOT \banc~277_q\;
\ALT_INV_banc~213_q\ <= NOT \banc~213_q\;
\ALT_INV_banc~244_q\ <= NOT \banc~244_q\;
\ALT_INV_banc~1332_combout\ <= NOT \banc~1332_combout\;
\ALT_INV_banc~116_q\ <= NOT \banc~116_q\;
\ALT_INV_banc~148_q\ <= NOT \banc~148_q\;
\ALT_INV_banc~84_q\ <= NOT \banc~84_q\;
\ALT_INV_banc~180_q\ <= NOT \banc~180_q\;
\ALT_INV_banc~276_q\ <= NOT \banc~276_q\;
\ALT_INV_banc~212_q\ <= NOT \banc~212_q\;
\ALT_INV_banc~243_q\ <= NOT \banc~243_q\;
\ALT_INV_banc~1331_combout\ <= NOT \banc~1331_combout\;
\ALT_INV_banc~115_q\ <= NOT \banc~115_q\;
\ALT_INV_banc~147_q\ <= NOT \banc~147_q\;
\ALT_INV_banc~83_q\ <= NOT \banc~83_q\;
\ALT_INV_banc~179_q\ <= NOT \banc~179_q\;
\ALT_INV_banc~275_q\ <= NOT \banc~275_q\;
\ALT_INV_banc~211_q\ <= NOT \banc~211_q\;
\ALT_INV_banc~242_q\ <= NOT \banc~242_q\;
\ALT_INV_banc~1330_combout\ <= NOT \banc~1330_combout\;
\ALT_INV_banc~114_q\ <= NOT \banc~114_q\;
\ALT_INV_banc~146_q\ <= NOT \banc~146_q\;
\ALT_INV_banc~82_q\ <= NOT \banc~82_q\;
\ALT_INV_banc~178_q\ <= NOT \banc~178_q\;
\ALT_INV_banc~274_q\ <= NOT \banc~274_q\;
\ALT_INV_banc~210_q\ <= NOT \banc~210_q\;
\ALT_INV_banc~241_q\ <= NOT \banc~241_q\;
\ALT_INV_banc~1329_combout\ <= NOT \banc~1329_combout\;
\ALT_INV_banc~113_q\ <= NOT \banc~113_q\;
\ALT_INV_banc~145_q\ <= NOT \banc~145_q\;
\ALT_INV_banc~81_q\ <= NOT \banc~81_q\;
\ALT_INV_banc~177_q\ <= NOT \banc~177_q\;
\ALT_INV_banc~273_q\ <= NOT \banc~273_q\;
\ALT_INV_banc~209_q\ <= NOT \banc~209_q\;
\ALT_INV_banc~240_q\ <= NOT \banc~240_q\;
\ALT_INV_banc~1328_combout\ <= NOT \banc~1328_combout\;
\ALT_INV_banc~112_q\ <= NOT \banc~112_q\;
\ALT_INV_banc~144_q\ <= NOT \banc~144_q\;
\ALT_INV_banc~80_q\ <= NOT \banc~80_q\;
\ALT_INV_banc~176_q\ <= NOT \banc~176_q\;
\ALT_INV_banc~272_q\ <= NOT \banc~272_q\;
\ALT_INV_banc~208_q\ <= NOT \banc~208_q\;
\ALT_INV_banc~239_q\ <= NOT \banc~239_q\;
\ALT_INV_banc~1327_combout\ <= NOT \banc~1327_combout\;
\ALT_INV_banc~111_q\ <= NOT \banc~111_q\;
\ALT_INV_banc~143_q\ <= NOT \banc~143_q\;
\ALT_INV_banc~79_q\ <= NOT \banc~79_q\;
\ALT_INV_banc~175_q\ <= NOT \banc~175_q\;
\ALT_INV_banc~271_q\ <= NOT \banc~271_q\;
\ALT_INV_banc~207_q\ <= NOT \banc~207_q\;
\ALT_INV_banc~238_q\ <= NOT \banc~238_q\;
\ALT_INV_banc~1326_combout\ <= NOT \banc~1326_combout\;
\ALT_INV_banc~110_q\ <= NOT \banc~110_q\;
\ALT_INV_banc~142_q\ <= NOT \banc~142_q\;
\ALT_INV_banc~78_q\ <= NOT \banc~78_q\;
\ALT_INV_banc~174_q\ <= NOT \banc~174_q\;
\ALT_INV_banc~270_q\ <= NOT \banc~270_q\;
\ALT_INV_banc~206_q\ <= NOT \banc~206_q\;
\ALT_INV_banc~237_q\ <= NOT \banc~237_q\;
\ALT_INV_banc~1325_combout\ <= NOT \banc~1325_combout\;
\ALT_INV_banc~109_q\ <= NOT \banc~109_q\;
\ALT_INV_banc~141_q\ <= NOT \banc~141_q\;
\ALT_INV_banc~77_q\ <= NOT \banc~77_q\;
\ALT_INV_banc~173_q\ <= NOT \banc~173_q\;
\ALT_INV_banc~269_q\ <= NOT \banc~269_q\;
\ALT_INV_banc~205_q\ <= NOT \banc~205_q\;
\ALT_INV_banc~236_q\ <= NOT \banc~236_q\;
\ALT_INV_banc~1324_combout\ <= NOT \banc~1324_combout\;
\ALT_INV_banc~108_q\ <= NOT \banc~108_q\;
\ALT_INV_banc~140_q\ <= NOT \banc~140_q\;
\ALT_INV_banc~76_q\ <= NOT \banc~76_q\;
\ALT_INV_banc~172_q\ <= NOT \banc~172_q\;
\ALT_INV_banc~268_q\ <= NOT \banc~268_q\;
\ALT_INV_banc~204_q\ <= NOT \banc~204_q\;
\ALT_INV_banc~235_q\ <= NOT \banc~235_q\;
\ALT_INV_banc~1323_combout\ <= NOT \banc~1323_combout\;
\ALT_INV_banc~107_q\ <= NOT \banc~107_q\;
\ALT_INV_banc~139_q\ <= NOT \banc~139_q\;
\ALT_INV_banc~75_q\ <= NOT \banc~75_q\;
\ALT_INV_banc~171_q\ <= NOT \banc~171_q\;
\ALT_INV_banc~267_q\ <= NOT \banc~267_q\;
\ALT_INV_banc~203_q\ <= NOT \banc~203_q\;
\ALT_INV_banc~234_q\ <= NOT \banc~234_q\;
\ALT_INV_banc~1322_combout\ <= NOT \banc~1322_combout\;
\ALT_INV_banc~106_q\ <= NOT \banc~106_q\;
\ALT_INV_banc~138_q\ <= NOT \banc~138_q\;
\ALT_INV_banc~74_q\ <= NOT \banc~74_q\;
\ALT_INV_banc~170_q\ <= NOT \banc~170_q\;
\ALT_INV_banc~266_q\ <= NOT \banc~266_q\;
\ALT_INV_banc~202_q\ <= NOT \banc~202_q\;
\ALT_INV_banc~233_q\ <= NOT \banc~233_q\;
\ALT_INV_banc~1321_combout\ <= NOT \banc~1321_combout\;
\ALT_INV_banc~105_q\ <= NOT \banc~105_q\;
\ALT_INV_banc~137_q\ <= NOT \banc~137_q\;
\ALT_INV_banc~73_q\ <= NOT \banc~73_q\;
\ALT_INV_banc~169_q\ <= NOT \banc~169_q\;
\ALT_INV_banc~265_q\ <= NOT \banc~265_q\;
\ALT_INV_banc~201_q\ <= NOT \banc~201_q\;
\ALT_INV_banc~232_q\ <= NOT \banc~232_q\;
\ALT_INV_banc~1320_combout\ <= NOT \banc~1320_combout\;
\ALT_INV_banc~104_q\ <= NOT \banc~104_q\;
\ALT_INV_banc~136_q\ <= NOT \banc~136_q\;
\ALT_INV_banc~72_q\ <= NOT \banc~72_q\;
\ALT_INV_banc~168_q\ <= NOT \banc~168_q\;
\ALT_INV_banc~264_q\ <= NOT \banc~264_q\;
\ALT_INV_banc~200_q\ <= NOT \banc~200_q\;
\ALT_INV_banc~231_q\ <= NOT \banc~231_q\;
\ALT_INV_banc~1319_combout\ <= NOT \banc~1319_combout\;
\ALT_INV_banc~103_q\ <= NOT \banc~103_q\;
\ALT_INV_banc~135_q\ <= NOT \banc~135_q\;
\ALT_INV_banc~71_q\ <= NOT \banc~71_q\;
\ALT_INV_banc~167_q\ <= NOT \banc~167_q\;
\ALT_INV_banc~263_q\ <= NOT \banc~263_q\;
\ALT_INV_banc~199_q\ <= NOT \banc~199_q\;
\ALT_INV_banc~230_q\ <= NOT \banc~230_q\;
\ALT_INV_banc~1318_combout\ <= NOT \banc~1318_combout\;
\ALT_INV_banc~102_q\ <= NOT \banc~102_q\;
\ALT_INV_banc~134_q\ <= NOT \banc~134_q\;
\ALT_INV_banc~70_q\ <= NOT \banc~70_q\;
\ALT_INV_banc~166_q\ <= NOT \banc~166_q\;
\ALT_INV_banc~262_q\ <= NOT \banc~262_q\;
\ALT_INV_banc~198_q\ <= NOT \banc~198_q\;

-- Location: IOOBUF_X40_Y0_N19
\BusA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1062_combout\,
	devoe => ww_devoe,
	o => ww_BusA(0));

-- Location: IOOBUF_X50_Y0_N76
\BusA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1066_combout\,
	devoe => ww_devoe,
	o => ww_BusA(1));

-- Location: IOOBUF_X6_Y0_N19
\BusA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1070_combout\,
	devoe => ww_devoe,
	o => ww_BusA(2));

-- Location: IOOBUF_X58_Y0_N93
\BusA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1074_combout\,
	devoe => ww_devoe,
	o => ww_BusA(3));

-- Location: IOOBUF_X66_Y0_N59
\BusA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1078_combout\,
	devoe => ww_devoe,
	o => ww_BusA(4));

-- Location: IOOBUF_X4_Y0_N36
\BusA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1082_combout\,
	devoe => ww_devoe,
	o => ww_BusA(5));

-- Location: IOOBUF_X34_Y0_N59
\BusA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1086_combout\,
	devoe => ww_devoe,
	o => ww_BusA(6));

-- Location: IOOBUF_X32_Y0_N2
\BusA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1090_combout\,
	devoe => ww_devoe,
	o => ww_BusA(7));

-- Location: IOOBUF_X50_Y0_N93
\BusA[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1094_combout\,
	devoe => ww_devoe,
	o => ww_BusA(8));

-- Location: IOOBUF_X38_Y0_N2
\BusA[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1098_combout\,
	devoe => ww_devoe,
	o => ww_BusA(9));

-- Location: IOOBUF_X4_Y0_N53
\BusA[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1102_combout\,
	devoe => ww_devoe,
	o => ww_BusA(10));

-- Location: IOOBUF_X36_Y0_N36
\BusA[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1106_combout\,
	devoe => ww_devoe,
	o => ww_BusA(11));

-- Location: IOOBUF_X56_Y0_N53
\BusA[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1110_combout\,
	devoe => ww_devoe,
	o => ww_BusA(12));

-- Location: IOOBUF_X56_Y0_N36
\BusA[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1114_combout\,
	devoe => ww_devoe,
	o => ww_BusA(13));

-- Location: IOOBUF_X38_Y0_N53
\BusA[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1118_combout\,
	devoe => ww_devoe,
	o => ww_BusA(14));

-- Location: IOOBUF_X36_Y0_N19
\BusA[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1122_combout\,
	devoe => ww_devoe,
	o => ww_BusA(15));

-- Location: IOOBUF_X56_Y0_N19
\BusA[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1126_combout\,
	devoe => ww_devoe,
	o => ww_BusA(16));

-- Location: IOOBUF_X56_Y0_N2
\BusA[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1130_combout\,
	devoe => ww_devoe,
	o => ww_BusA(17));

-- Location: IOOBUF_X66_Y0_N93
\BusA[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1134_combout\,
	devoe => ww_devoe,
	o => ww_BusA(18));

-- Location: IOOBUF_X2_Y0_N59
\BusA[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1138_combout\,
	devoe => ww_devoe,
	o => ww_BusA(19));

-- Location: IOOBUF_X70_Y0_N53
\BusA[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1142_combout\,
	devoe => ww_devoe,
	o => ww_BusA(20));

-- Location: IOOBUF_X58_Y0_N59
\BusA[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1146_combout\,
	devoe => ww_devoe,
	o => ww_BusA(21));

-- Location: IOOBUF_X54_Y0_N2
\BusA[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1150_combout\,
	devoe => ww_devoe,
	o => ww_BusA(22));

-- Location: IOOBUF_X68_Y0_N36
\BusA[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1154_combout\,
	devoe => ww_devoe,
	o => ww_BusA(23));

-- Location: IOOBUF_X60_Y0_N36
\BusA[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1158_combout\,
	devoe => ww_devoe,
	o => ww_BusA(24));

-- Location: IOOBUF_X2_Y0_N93
\BusA[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1162_combout\,
	devoe => ww_devoe,
	o => ww_BusA(25));

-- Location: IOOBUF_X54_Y0_N53
\BusA[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1166_combout\,
	devoe => ww_devoe,
	o => ww_BusA(26));

-- Location: IOOBUF_X6_Y0_N36
\BusA[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1170_combout\,
	devoe => ww_devoe,
	o => ww_BusA(27));

-- Location: IOOBUF_X50_Y0_N42
\BusA[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1174_combout\,
	devoe => ww_devoe,
	o => ww_BusA(28));

-- Location: IOOBUF_X58_Y0_N76
\BusA[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1178_combout\,
	devoe => ww_devoe,
	o => ww_BusA(29));

-- Location: IOOBUF_X70_Y0_N19
\BusA[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1182_combout\,
	devoe => ww_devoe,
	o => ww_BusA(30));

-- Location: IOOBUF_X38_Y0_N19
\BusA[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1186_combout\,
	devoe => ww_devoe,
	o => ww_BusA(31));

-- Location: IOOBUF_X40_Y0_N36
\BusB[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1190_combout\,
	devoe => ww_devoe,
	o => ww_BusB(0));

-- Location: IOOBUF_X34_Y0_N76
\BusB[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1194_combout\,
	devoe => ww_devoe,
	o => ww_BusB(1));

-- Location: IOOBUF_X89_Y4_N79
\BusB[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1198_combout\,
	devoe => ww_devoe,
	o => ww_BusB(2));

-- Location: IOOBUF_X72_Y0_N19
\BusB[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1202_combout\,
	devoe => ww_devoe,
	o => ww_BusB(3));

-- Location: IOOBUF_X8_Y0_N19
\BusB[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1206_combout\,
	devoe => ww_devoe,
	o => ww_BusB(4));

-- Location: IOOBUF_X4_Y0_N19
\BusB[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1210_combout\,
	devoe => ww_devoe,
	o => ww_BusB(5));

-- Location: IOOBUF_X68_Y0_N19
\BusB[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1214_combout\,
	devoe => ww_devoe,
	o => ww_BusB(6));

-- Location: IOOBUF_X40_Y0_N53
\BusB[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1218_combout\,
	devoe => ww_devoe,
	o => ww_BusB(7));

-- Location: IOOBUF_X38_Y0_N36
\BusB[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1222_combout\,
	devoe => ww_devoe,
	o => ww_BusB(8));

-- Location: IOOBUF_X36_Y0_N53
\BusB[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1226_combout\,
	devoe => ww_devoe,
	o => ww_BusB(9));

-- Location: IOOBUF_X4_Y0_N2
\BusB[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1230_combout\,
	devoe => ww_devoe,
	o => ww_BusB(10));

-- Location: IOOBUF_X36_Y0_N2
\BusB[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1234_combout\,
	devoe => ww_devoe,
	o => ww_BusB(11));

-- Location: IOOBUF_X52_Y0_N36
\BusB[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1238_combout\,
	devoe => ww_devoe,
	o => ww_BusB(12));

-- Location: IOOBUF_X54_Y0_N19
\BusB[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1242_combout\,
	devoe => ww_devoe,
	o => ww_BusB(13));

-- Location: IOOBUF_X2_Y0_N76
\BusB[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1246_combout\,
	devoe => ww_devoe,
	o => ww_BusB(14));

-- Location: IOOBUF_X40_Y0_N2
\BusB[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1250_combout\,
	devoe => ww_devoe,
	o => ww_BusB(15));

-- Location: IOOBUF_X58_Y0_N42
\BusB[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1254_combout\,
	devoe => ww_devoe,
	o => ww_BusB(16));

-- Location: IOOBUF_X54_Y0_N36
\BusB[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1258_combout\,
	devoe => ww_devoe,
	o => ww_BusB(17));

-- Location: IOOBUF_X89_Y6_N56
\BusB[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1262_combout\,
	devoe => ww_devoe,
	o => ww_BusB(18));

-- Location: IOOBUF_X68_Y0_N53
\BusB[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1266_combout\,
	devoe => ww_devoe,
	o => ww_BusB(19));

-- Location: IOOBUF_X72_Y0_N2
\BusB[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1270_combout\,
	devoe => ww_devoe,
	o => ww_BusB(20));

-- Location: IOOBUF_X52_Y0_N53
\BusB[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1274_combout\,
	devoe => ww_devoe,
	o => ww_BusB(21));

-- Location: IOOBUF_X52_Y0_N2
\BusB[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1278_combout\,
	devoe => ww_devoe,
	o => ww_BusB(22));

-- Location: IOOBUF_X89_Y6_N5
\BusB[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1282_combout\,
	devoe => ww_devoe,
	o => ww_BusB(23));

-- Location: IOOBUF_X52_Y0_N19
\BusB[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1286_combout\,
	devoe => ww_devoe,
	o => ww_BusB(24));

-- Location: IOOBUF_X64_Y0_N2
\BusB[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1290_combout\,
	devoe => ww_devoe,
	o => ww_BusB(25));

-- Location: IOOBUF_X89_Y4_N62
\BusB[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1294_combout\,
	devoe => ww_devoe,
	o => ww_BusB(26));

-- Location: IOOBUF_X72_Y0_N53
\BusB[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1298_combout\,
	devoe => ww_devoe,
	o => ww_BusB(27));

-- Location: IOOBUF_X70_Y0_N36
\BusB[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1302_combout\,
	devoe => ww_devoe,
	o => ww_BusB(28));

-- Location: IOOBUF_X89_Y8_N22
\BusB[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1306_combout\,
	devoe => ww_devoe,
	o => ww_BusB(29));

-- Location: IOOBUF_X89_Y8_N39
\BusB[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1310_combout\,
	devoe => ww_devoe,
	o => ww_BusB(30));

-- Location: IOOBUF_X64_Y0_N19
\BusB[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \banc~1314_combout\,
	devoe => ww_devoe,
	o => ww_BusB(31));

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X64_Y0_N52
\BusW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusW(0),
	o => \BusW[0]~input_o\);

-- Location: IOIBUF_X62_Y0_N35
\RW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RW(2),
	o => \RW[2]~input_o\);

-- Location: IOIBUF_X60_Y0_N18
\RW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RW(1),
	o => \RW[1]~input_o\);

-- Location: IOIBUF_X89_Y4_N95
\we~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_we,
	o => \we~input_o\);

-- Location: IOIBUF_X62_Y0_N1
\RW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RW(0),
	o => \RW[0]~input_o\);

-- Location: LABCELL_X27_Y6_N9
\banc~1382\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1382_combout\ = ( \RW[0]~input_o\ & ( (\RW[2]~input_o\ & (!\RW[1]~input_o\ & \we~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RW[2]~input_o\,
	datab => \ALT_INV_RW[1]~input_o\,
	datad => \ALT_INV_we~input_o\,
	dataf => \ALT_INV_RW[0]~input_o\,
	combout => \banc~1382_combout\);

-- Location: FF_X25_Y4_N49
\banc~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[0]~input_o\,
	sload => VCC,
	ena => \banc~1382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~198_q\);

-- Location: IOIBUF_X28_Y0_N1
\RA[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(2),
	o => \RA[2]~input_o\);

-- Location: LABCELL_X27_Y6_N6
\banc~1388\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1388_combout\ = ( !\RW[0]~input_o\ & ( (\RW[2]~input_o\ & (\RW[1]~input_o\ & \we~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RW[2]~input_o\,
	datab => \ALT_INV_RW[1]~input_o\,
	datac => \ALT_INV_we~input_o\,
	dataf => \ALT_INV_RW[0]~input_o\,
	combout => \banc~1388_combout\);

-- Location: FF_X28_Y4_N56
\banc~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[0]~input_o\,
	sload => VCC,
	ena => \banc~1388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~230_q\);

-- Location: LABCELL_X27_Y6_N51
\banc~1387\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1387_combout\ = ( !\RW[0]~input_o\ & ( (!\RW[2]~input_o\ & (\RW[1]~input_o\ & \we~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RW[2]~input_o\,
	datab => \ALT_INV_RW[1]~input_o\,
	datad => \ALT_INV_we~input_o\,
	dataf => \ALT_INV_RW[0]~input_o\,
	combout => \banc~1387_combout\);

-- Location: FF_X29_Y4_N14
\banc~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[0]~input_o\,
	sload => VCC,
	ena => \banc~1387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~102_q\);

-- Location: LABCELL_X27_Y6_N45
\banc~1385\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1385_combout\ = ( \RW[0]~input_o\ & ( (!\RW[2]~input_o\ & (!\RW[1]~input_o\ & \we~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RW[2]~input_o\,
	datab => \ALT_INV_RW[1]~input_o\,
	datad => \ALT_INV_we~input_o\,
	dataf => \ALT_INV_RW[0]~input_o\,
	combout => \banc~1385_combout\);

-- Location: FF_X29_Y4_N35
\banc~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[0]~input_o\,
	sload => VCC,
	ena => \banc~1385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~70_q\);

-- Location: IOIBUF_X26_Y0_N58
\RA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(1),
	o => \RA[1]~input_o\);

-- Location: LABCELL_X27_Y6_N48
\banc~1386\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1386_combout\ = ( \RW[0]~input_o\ & ( (\RW[1]~input_o\ & (!\RW[2]~input_o\ & \we~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_RW[1]~input_o\,
	datac => \ALT_INV_RW[2]~input_o\,
	datad => \ALT_INV_we~input_o\,
	dataf => \ALT_INV_RW[0]~input_o\,
	combout => \banc~1386_combout\);

-- Location: FF_X29_Y4_N37
\banc~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[0]~input_o\,
	sload => VCC,
	ena => \banc~1386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~134_q\);

-- Location: IOIBUF_X30_Y0_N18
\RA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(0),
	o => \RA[0]~input_o\);

-- Location: LABCELL_X29_Y4_N36
\banc~1318\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1318_combout\ = ( \banc~134_q\ & ( \RA[0]~input_o\ & ( ((\RA[1]~input_o\) # (\banc~70_q\)) # (\RA[2]~input_o\) ) ) ) # ( !\banc~134_q\ & ( \RA[0]~input_o\ & ( ((\banc~70_q\ & !\RA[1]~input_o\)) # (\RA[2]~input_o\) ) ) ) # ( \banc~134_q\ & ( 
-- !\RA[0]~input_o\ & ( (!\RA[2]~input_o\ & (\banc~102_q\ & \RA[1]~input_o\)) ) ) ) # ( !\banc~134_q\ & ( !\RA[0]~input_o\ & ( (!\RA[2]~input_o\ & (\banc~102_q\ & \RA[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001001011111010101010101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RA[2]~input_o\,
	datab => \ALT_INV_banc~102_q\,
	datac => \ALT_INV_banc~70_q\,
	datad => \ALT_INV_RA[1]~input_o\,
	datae => \ALT_INV_banc~134_q\,
	dataf => \ALT_INV_RA[0]~input_o\,
	combout => \banc~1318_combout\);

-- Location: MLABCELL_X28_Y4_N51
\banc~262feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~262feeder_combout\ = ( \BusW[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BusW[0]~input_o\,
	combout => \banc~262feeder_combout\);

-- Location: LABCELL_X27_Y6_N42
\banc~1383\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1383_combout\ = ( \RW[0]~input_o\ & ( (\RW[2]~input_o\ & (\RW[1]~input_o\ & \we~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RW[2]~input_o\,
	datab => \ALT_INV_RW[1]~input_o\,
	datac => \ALT_INV_we~input_o\,
	dataf => \ALT_INV_RW[0]~input_o\,
	combout => \banc~1383_combout\);

-- Location: FF_X28_Y4_N53
\banc~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~262feeder_combout\,
	ena => \banc~1383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~262_q\);

-- Location: LABCELL_X27_Y4_N27
\banc~1384\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1384_combout\ = ( \we~input_o\ & ( (!\RW[1]~input_o\ & (\RW[2]~input_o\ & !\RW[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RW[1]~input_o\,
	datac => \ALT_INV_RW[2]~input_o\,
	datad => \ALT_INV_RW[0]~input_o\,
	dataf => \ALT_INV_we~input_o\,
	combout => \banc~1384_combout\);

-- Location: FF_X28_Y4_N32
\banc~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[0]~input_o\,
	sload => VCC,
	ena => \banc~1384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~166_q\);

-- Location: MLABCELL_X28_Y4_N30
\banc~1062\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1062_combout\ = ( !\RA[1]~input_o\ & ( (!\RA[2]~input_o\ & ((((\banc~1318_combout\))))) # (\RA[2]~input_o\ & ((!\banc~1318_combout\ & (((\banc~166_q\)))) # (\banc~1318_combout\ & (\banc~198_q\)))) ) ) # ( \RA[1]~input_o\ & ( ((!\RA[2]~input_o\ & 
-- (((\banc~1318_combout\)))) # (\RA[2]~input_o\ & ((!\banc~1318_combout\ & (\banc~230_q\)) # (\banc~1318_combout\ & ((\banc~262_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001111011101000000111100110000000011110111010000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~198_q\,
	datab => \ALT_INV_RA[2]~input_o\,
	datac => \ALT_INV_banc~230_q\,
	datad => \ALT_INV_banc~1318_combout\,
	datae => \ALT_INV_RA[1]~input_o\,
	dataf => \ALT_INV_banc~262_q\,
	datag => \ALT_INV_banc~166_q\,
	combout => \banc~1062_combout\);

-- Location: IOIBUF_X62_Y0_N18
\BusW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusW(1),
	o => \BusW[1]~input_o\);

-- Location: FF_X29_Y4_N2
\banc~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[1]~input_o\,
	sload => VCC,
	ena => \banc~1387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~103_q\);

-- Location: FF_X29_Y4_N56
\banc~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[1]~input_o\,
	sload => VCC,
	ena => \banc~1386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~135_q\);

-- Location: FF_X29_Y4_N50
\banc~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[1]~input_o\,
	sload => VCC,
	ena => \banc~1385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~71_q\);

-- Location: LABCELL_X29_Y4_N54
\banc~1319\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1319_combout\ = ( \banc~135_q\ & ( \banc~71_q\ & ( ((!\RA[2]~input_o\ & (\banc~103_q\ & \RA[1]~input_o\))) # (\RA[0]~input_o\) ) ) ) # ( !\banc~135_q\ & ( \banc~71_q\ & ( (!\RA[2]~input_o\ & ((!\RA[0]~input_o\ & (\banc~103_q\ & \RA[1]~input_o\)) # 
-- (\RA[0]~input_o\ & ((!\RA[1]~input_o\))))) # (\RA[2]~input_o\ & (\RA[0]~input_o\)) ) ) ) # ( \banc~135_q\ & ( !\banc~71_q\ & ( (!\RA[2]~input_o\ & (\RA[1]~input_o\ & ((\banc~103_q\) # (\RA[0]~input_o\)))) # (\RA[2]~input_o\ & (\RA[0]~input_o\)) ) ) ) # ( 
-- !\banc~135_q\ & ( !\banc~71_q\ & ( (!\RA[2]~input_o\ & (!\RA[0]~input_o\ & (\banc~103_q\ & \RA[1]~input_o\))) # (\RA[2]~input_o\ & (\RA[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011001000100010011101100110011000110010011001100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RA[2]~input_o\,
	datab => \ALT_INV_RA[0]~input_o\,
	datac => \ALT_INV_banc~103_q\,
	datad => \ALT_INV_RA[1]~input_o\,
	datae => \ALT_INV_banc~135_q\,
	dataf => \ALT_INV_banc~71_q\,
	combout => \banc~1319_combout\);

-- Location: MLABCELL_X25_Y4_N24
\banc~199feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~199feeder_combout\ = ( \BusW[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BusW[1]~input_o\,
	combout => \banc~199feeder_combout\);

-- Location: FF_X25_Y4_N25
\banc~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~199feeder_combout\,
	ena => \banc~1382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~199_q\);

-- Location: FF_X28_Y4_N2
\banc~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[1]~input_o\,
	sload => VCC,
	ena => \banc~1388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~231_q\);

-- Location: MLABCELL_X28_Y4_N48
\banc~263feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~263feeder_combout\ = \BusW[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_BusW[1]~input_o\,
	combout => \banc~263feeder_combout\);

-- Location: FF_X28_Y4_N50
\banc~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~263feeder_combout\,
	ena => \banc~1383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~263_q\);

-- Location: FF_X28_Y4_N38
\banc~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[1]~input_o\,
	sload => VCC,
	ena => \banc~1384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~167_q\);

-- Location: MLABCELL_X28_Y4_N36
\banc~1066\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1066_combout\ = ( !\RA[1]~input_o\ & ( (!\banc~1319_combout\ & (((\banc~167_q\ & (\RA[2]~input_o\))))) # (\banc~1319_combout\ & ((((!\RA[2]~input_o\))) # (\banc~199_q\))) ) ) # ( \RA[1]~input_o\ & ( (!\banc~1319_combout\ & (((\banc~231_q\ & 
-- (\RA[2]~input_o\))))) # (\banc~1319_combout\ & ((((!\RA[2]~input_o\) # (\banc~263_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010100011011010101010000101001010101000110110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~1319_combout\,
	datab => \ALT_INV_banc~199_q\,
	datac => \ALT_INV_banc~231_q\,
	datad => \ALT_INV_RA[2]~input_o\,
	datae => \ALT_INV_RA[1]~input_o\,
	dataf => \ALT_INV_banc~263_q\,
	datag => \ALT_INV_banc~167_q\,
	combout => \banc~1066_combout\);

-- Location: IOIBUF_X6_Y0_N1
\BusW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusW(2),
	o => \BusW[2]~input_o\);

-- Location: FF_X22_Y4_N14
\banc~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[2]~input_o\,
	sload => VCC,
	ena => \banc~1387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~104_q\);

-- Location: LABCELL_X22_Y4_N3
\banc~72feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~72feeder_combout\ = \BusW[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_BusW[2]~input_o\,
	combout => \banc~72feeder_combout\);

-- Location: FF_X22_Y4_N5
\banc~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~72feeder_combout\,
	ena => \banc~1385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~72_q\);

-- Location: FF_X22_Y4_N8
\banc~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[2]~input_o\,
	sload => VCC,
	ena => \banc~1386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~136_q\);

-- Location: LABCELL_X22_Y4_N6
\banc~1320\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1320_combout\ = ( \banc~136_q\ & ( \RA[0]~input_o\ & ( ((\RA[2]~input_o\) # (\banc~72_q\)) # (\RA[1]~input_o\) ) ) ) # ( !\banc~136_q\ & ( \RA[0]~input_o\ & ( ((!\RA[1]~input_o\ & \banc~72_q\)) # (\RA[2]~input_o\) ) ) ) # ( \banc~136_q\ & ( 
-- !\RA[0]~input_o\ & ( (\RA[1]~input_o\ & (\banc~104_q\ & !\RA[2]~input_o\)) ) ) ) # ( !\banc~136_q\ & ( !\RA[0]~input_o\ & ( (\RA[1]~input_o\ & (\banc~104_q\ & !\RA[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000000001010111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RA[1]~input_o\,
	datab => \ALT_INV_banc~104_q\,
	datac => \ALT_INV_banc~72_q\,
	datad => \ALT_INV_RA[2]~input_o\,
	datae => \ALT_INV_banc~136_q\,
	dataf => \ALT_INV_RA[0]~input_o\,
	combout => \banc~1320_combout\);

-- Location: FF_X22_Y3_N31
\banc~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[2]~input_o\,
	sload => VCC,
	ena => \banc~1382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~200_q\);

-- Location: FF_X21_Y4_N56
\banc~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[2]~input_o\,
	sload => VCC,
	ena => \banc~1388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~232_q\);

-- Location: FF_X22_Y3_N11
\banc~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[2]~input_o\,
	sload => VCC,
	ena => \banc~1383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~264_q\);

-- Location: FF_X21_Y4_N2
\banc~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[2]~input_o\,
	sload => VCC,
	ena => \banc~1384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~168_q\);

-- Location: MLABCELL_X21_Y4_N0
\banc~1070\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1070_combout\ = ( !\RA[1]~input_o\ & ( (!\banc~1320_combout\ & (((\banc~168_q\ & (\RA[2]~input_o\))))) # (\banc~1320_combout\ & ((((!\RA[2]~input_o\))) # (\banc~200_q\))) ) ) # ( \RA[1]~input_o\ & ( (!\banc~1320_combout\ & (((\banc~232_q\ & 
-- (\RA[2]~input_o\))))) # (\banc~1320_combout\ & ((((!\RA[2]~input_o\) # (\banc~264_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010100011011010101010000101001010101000110110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~1320_combout\,
	datab => \ALT_INV_banc~200_q\,
	datac => \ALT_INV_banc~232_q\,
	datad => \ALT_INV_RA[2]~input_o\,
	datae => \ALT_INV_RA[1]~input_o\,
	dataf => \ALT_INV_banc~264_q\,
	datag => \ALT_INV_banc~168_q\,
	combout => \banc~1070_combout\);

-- Location: IOIBUF_X60_Y0_N1
\BusW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusW(3),
	o => \BusW[3]~input_o\);

-- Location: FF_X27_Y4_N20
\banc~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[3]~input_o\,
	sload => VCC,
	ena => \banc~1383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~265_q\);

-- Location: LABCELL_X22_Y4_N48
\banc~73feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~73feeder_combout\ = \BusW[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_BusW[3]~input_o\,
	combout => \banc~73feeder_combout\);

-- Location: FF_X22_Y4_N50
\banc~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~73feeder_combout\,
	ena => \banc~1385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~73_q\);

-- Location: FF_X22_Y4_N32
\banc~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[3]~input_o\,
	sload => VCC,
	ena => \banc~1387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~105_q\);

-- Location: FF_X22_Y4_N26
\banc~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[3]~input_o\,
	sload => VCC,
	ena => \banc~1386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~137_q\);

-- Location: LABCELL_X22_Y4_N24
\banc~1321\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1321_combout\ = ( \banc~137_q\ & ( \RA[0]~input_o\ & ( ((\RA[2]~input_o\) # (\RA[1]~input_o\)) # (\banc~73_q\) ) ) ) # ( !\banc~137_q\ & ( \RA[0]~input_o\ & ( ((\banc~73_q\ & !\RA[1]~input_o\)) # (\RA[2]~input_o\) ) ) ) # ( \banc~137_q\ & ( 
-- !\RA[0]~input_o\ & ( (\banc~105_q\ & (\RA[1]~input_o\ & !\RA[2]~input_o\)) ) ) ) # ( !\banc~137_q\ & ( !\RA[0]~input_o\ & ( (\banc~105_q\ & (\RA[1]~input_o\ & !\RA[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000001010000111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~73_q\,
	datab => \ALT_INV_banc~105_q\,
	datac => \ALT_INV_RA[1]~input_o\,
	datad => \ALT_INV_RA[2]~input_o\,
	datae => \ALT_INV_banc~137_q\,
	dataf => \ALT_INV_RA[0]~input_o\,
	combout => \banc~1321_combout\);

-- Location: FF_X27_Y4_N56
\banc~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[3]~input_o\,
	sload => VCC,
	ena => \banc~1388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~233_q\);

-- Location: MLABCELL_X25_Y4_N51
\banc~201feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~201feeder_combout\ = ( \BusW[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BusW[3]~input_o\,
	combout => \banc~201feeder_combout\);

-- Location: FF_X25_Y4_N52
\banc~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~201feeder_combout\,
	ena => \banc~1382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~201_q\);

-- Location: FF_X27_Y4_N2
\banc~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[3]~input_o\,
	sload => VCC,
	ena => \banc~1384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~169_q\);

-- Location: LABCELL_X27_Y4_N0
\banc~1074\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1074_combout\ = ( !\RA[1]~input_o\ & ( ((!\banc~1321_combout\ & (\banc~169_q\ & ((\RA[2]~input_o\)))) # (\banc~1321_combout\ & (((!\RA[2]~input_o\) # (\banc~201_q\))))) ) ) # ( \RA[1]~input_o\ & ( (!\banc~1321_combout\ & (((\banc~233_q\ & 
-- ((\RA[2]~input_o\)))))) # (\banc~1321_combout\ & ((((!\RA[2]~input_o\))) # (\banc~265_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100110011001100110011001100001100001111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~265_q\,
	datab => \ALT_INV_banc~1321_combout\,
	datac => \ALT_INV_banc~233_q\,
	datad => \ALT_INV_banc~201_q\,
	datae => \ALT_INV_RA[1]~input_o\,
	dataf => \ALT_INV_RA[2]~input_o\,
	datag => \ALT_INV_banc~169_q\,
	combout => \banc~1074_combout\);

-- Location: IOIBUF_X6_Y0_N52
\BusW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusW(4),
	o => \BusW[4]~input_o\);

-- Location: FF_X21_Y4_N50
\banc~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[4]~input_o\,
	sload => VCC,
	ena => \banc~1383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~266_q\);

-- Location: FF_X22_Y4_N44
\banc~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[4]~input_o\,
	sload => VCC,
	ena => \banc~1387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~106_q\);

-- Location: FF_X22_Y4_N53
\banc~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[4]~input_o\,
	sload => VCC,
	ena => \banc~1385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~74_q\);

-- Location: FF_X22_Y4_N38
\banc~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[4]~input_o\,
	sload => VCC,
	ena => \banc~1386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~138_q\);

-- Location: LABCELL_X22_Y4_N36
\banc~1322\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1322_combout\ = ( \banc~138_q\ & ( \RA[0]~input_o\ & ( ((\RA[2]~input_o\) # (\banc~74_q\)) # (\RA[1]~input_o\) ) ) ) # ( !\banc~138_q\ & ( \RA[0]~input_o\ & ( ((!\RA[1]~input_o\ & \banc~74_q\)) # (\RA[2]~input_o\) ) ) ) # ( \banc~138_q\ & ( 
-- !\RA[0]~input_o\ & ( (\RA[1]~input_o\ & (\banc~106_q\ & !\RA[2]~input_o\)) ) ) ) # ( !\banc~138_q\ & ( !\RA[0]~input_o\ & ( (\RA[1]~input_o\ & (\banc~106_q\ & !\RA[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000000001010111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RA[1]~input_o\,
	datab => \ALT_INV_banc~106_q\,
	datac => \ALT_INV_banc~74_q\,
	datad => \ALT_INV_RA[2]~input_o\,
	datae => \ALT_INV_banc~138_q\,
	dataf => \ALT_INV_RA[0]~input_o\,
	combout => \banc~1322_combout\);

-- Location: FF_X21_Y4_N32
\banc~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[4]~input_o\,
	sload => VCC,
	ena => \banc~1388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~234_q\);

-- Location: FF_X19_Y4_N34
\banc~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[4]~input_o\,
	sload => VCC,
	ena => \banc~1382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~202_q\);

-- Location: FF_X21_Y4_N8
\banc~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[4]~input_o\,
	sload => VCC,
	ena => \banc~1384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~170_q\);

-- Location: MLABCELL_X21_Y4_N6
\banc~1078\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1078_combout\ = ( !\RA[1]~input_o\ & ( ((!\banc~1322_combout\ & (\banc~170_q\ & (\RA[2]~input_o\))) # (\banc~1322_combout\ & (((!\RA[2]~input_o\) # (\banc~202_q\))))) ) ) # ( \RA[1]~input_o\ & ( (!\banc~1322_combout\ & (((\banc~234_q\ & 
-- (\RA[2]~input_o\))))) # (\banc~1322_combout\ & ((((!\RA[2]~input_o\))) # (\banc~266_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100001100001100110001110100110011001111110011001100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~266_q\,
	datab => \ALT_INV_banc~1322_combout\,
	datac => \ALT_INV_banc~234_q\,
	datad => \ALT_INV_RA[2]~input_o\,
	datae => \ALT_INV_RA[1]~input_o\,
	dataf => \ALT_INV_banc~202_q\,
	datag => \ALT_INV_banc~170_q\,
	combout => \banc~1078_combout\);

-- Location: IOIBUF_X8_Y0_N52
\BusW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusW(5),
	o => \BusW[5]~input_o\);

-- Location: FF_X21_Y4_N53
\banc~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[5]~input_o\,
	sload => VCC,
	ena => \banc~1383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~267_q\);

-- Location: FF_X21_Y4_N38
\banc~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[5]~input_o\,
	sload => VCC,
	ena => \banc~1388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~235_q\);

-- Location: FF_X22_Y4_N1
\banc~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[5]~input_o\,
	sload => VCC,
	ena => \banc~1385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~75_q\);

-- Location: FF_X23_Y4_N14
\banc~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[5]~input_o\,
	sload => VCC,
	ena => \banc~1387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~107_q\);

-- Location: FF_X23_Y4_N37
\banc~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[5]~input_o\,
	sload => VCC,
	ena => \banc~1386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~139_q\);

-- Location: LABCELL_X23_Y4_N36
\banc~1323\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1323_combout\ = ( \banc~139_q\ & ( \RA[0]~input_o\ & ( ((\RA[1]~input_o\) # (\banc~75_q\)) # (\RA[2]~input_o\) ) ) ) # ( !\banc~139_q\ & ( \RA[0]~input_o\ & ( ((\banc~75_q\ & !\RA[1]~input_o\)) # (\RA[2]~input_o\) ) ) ) # ( \banc~139_q\ & ( 
-- !\RA[0]~input_o\ & ( (!\RA[2]~input_o\ & (\RA[1]~input_o\ & \banc~107_q\)) ) ) ) # ( !\banc~139_q\ & ( !\RA[0]~input_o\ & ( (!\RA[2]~input_o\ & (\RA[1]~input_o\ & \banc~107_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101001110101011101010111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RA[2]~input_o\,
	datab => \ALT_INV_banc~75_q\,
	datac => \ALT_INV_RA[1]~input_o\,
	datad => \ALT_INV_banc~107_q\,
	datae => \ALT_INV_banc~139_q\,
	dataf => \ALT_INV_RA[0]~input_o\,
	combout => \banc~1323_combout\);

-- Location: LABCELL_X23_Y4_N30
\banc~203feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~203feeder_combout\ = ( \BusW[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BusW[5]~input_o\,
	combout => \banc~203feeder_combout\);

-- Location: FF_X23_Y4_N31
\banc~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~203feeder_combout\,
	ena => \banc~1382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~203_q\);

-- Location: FF_X21_Y4_N44
\banc~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[5]~input_o\,
	sload => VCC,
	ena => \banc~1384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~171_q\);

-- Location: MLABCELL_X21_Y4_N42
\banc~1082\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1082_combout\ = ( !\RA[1]~input_o\ & ( ((!\RA[2]~input_o\ & (((\banc~1323_combout\)))) # (\RA[2]~input_o\ & ((!\banc~1323_combout\ & (\banc~171_q\)) # (\banc~1323_combout\ & ((\banc~203_q\)))))) ) ) # ( \RA[1]~input_o\ & ( (!\RA[2]~input_o\ & 
-- ((((\banc~1323_combout\))))) # (\RA[2]~input_o\ & ((!\banc~1323_combout\ & (((\banc~235_q\)))) # (\banc~1323_combout\ & (\banc~267_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001111001100000000111101110100000011111111110000001111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~267_q\,
	datab => \ALT_INV_RA[2]~input_o\,
	datac => \ALT_INV_banc~235_q\,
	datad => \ALT_INV_banc~1323_combout\,
	datae => \ALT_INV_RA[1]~input_o\,
	dataf => \ALT_INV_banc~203_q\,
	datag => \ALT_INV_banc~171_q\,
	combout => \banc~1082_combout\);

-- Location: IOIBUF_X50_Y0_N58
\BusW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusW(6),
	o => \BusW[6]~input_o\);

-- Location: MLABCELL_X25_Y3_N3
\banc~204feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~204feeder_combout\ = ( \BusW[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BusW[6]~input_o\,
	combout => \banc~204feeder_combout\);

-- Location: FF_X25_Y3_N4
\banc~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~204feeder_combout\,
	ena => \banc~1382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~204_q\);

-- Location: FF_X28_Y4_N8
\banc~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[6]~input_o\,
	sload => VCC,
	ena => \banc~1388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~236_q\);

-- Location: FF_X29_Y4_N43
\banc~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[6]~input_o\,
	sload => VCC,
	ena => \banc~1387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~108_q\);

-- Location: FF_X29_Y4_N8
\banc~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[6]~input_o\,
	sload => VCC,
	ena => \banc~1386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~140_q\);

-- Location: FF_X29_Y4_N53
\banc~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[6]~input_o\,
	sload => VCC,
	ena => \banc~1385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~76_q\);

-- Location: LABCELL_X29_Y4_N6
\banc~1324\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1324_combout\ = ( \banc~140_q\ & ( \banc~76_q\ & ( ((!\RA[2]~input_o\ & (\banc~108_q\ & \RA[1]~input_o\))) # (\RA[0]~input_o\) ) ) ) # ( !\banc~140_q\ & ( \banc~76_q\ & ( (!\RA[2]~input_o\ & ((!\RA[1]~input_o\ & ((\RA[0]~input_o\))) # 
-- (\RA[1]~input_o\ & (\banc~108_q\ & !\RA[0]~input_o\)))) # (\RA[2]~input_o\ & (((\RA[0]~input_o\)))) ) ) ) # ( \banc~140_q\ & ( !\banc~76_q\ & ( (!\RA[2]~input_o\ & (\RA[1]~input_o\ & ((\RA[0]~input_o\) # (\banc~108_q\)))) # (\RA[2]~input_o\ & 
-- (((\RA[0]~input_o\)))) ) ) ) # ( !\banc~140_q\ & ( !\banc~76_q\ & ( (!\RA[2]~input_o\ & (\banc~108_q\ & (\RA[1]~input_o\ & !\RA[0]~input_o\))) # (\RA[2]~input_o\ & (((\RA[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010101000000100101111100000010111101010000001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RA[2]~input_o\,
	datab => \ALT_INV_banc~108_q\,
	datac => \ALT_INV_RA[1]~input_o\,
	datad => \ALT_INV_RA[0]~input_o\,
	datae => \ALT_INV_banc~140_q\,
	dataf => \ALT_INV_banc~76_q\,
	combout => \banc~1324_combout\);

-- Location: MLABCELL_X28_Y4_N24
\banc~268feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~268feeder_combout\ = \BusW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_BusW[6]~input_o\,
	combout => \banc~268feeder_combout\);

-- Location: FF_X28_Y4_N26
\banc~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~268feeder_combout\,
	ena => \banc~1383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~268_q\);

-- Location: FF_X28_Y4_N14
\banc~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[6]~input_o\,
	sload => VCC,
	ena => \banc~1384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~172_q\);

-- Location: MLABCELL_X28_Y4_N12
\banc~1086\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1086_combout\ = ( !\RA[1]~input_o\ & ( (!\RA[2]~input_o\ & ((((\banc~1324_combout\))))) # (\RA[2]~input_o\ & ((!\banc~1324_combout\ & (((\banc~172_q\)))) # (\banc~1324_combout\ & (\banc~204_q\)))) ) ) # ( \RA[1]~input_o\ & ( ((!\RA[2]~input_o\ & 
-- (((\banc~1324_combout\)))) # (\RA[2]~input_o\ & ((!\banc~1324_combout\ & (\banc~236_q\)) # (\banc~1324_combout\ & ((\banc~268_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001111011101000000111100110000000011110111010000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~204_q\,
	datab => \ALT_INV_RA[2]~input_o\,
	datac => \ALT_INV_banc~236_q\,
	datad => \ALT_INV_banc~1324_combout\,
	datae => \ALT_INV_RA[1]~input_o\,
	dataf => \ALT_INV_banc~268_q\,
	datag => \ALT_INV_banc~172_q\,
	combout => \banc~1086_combout\);

-- Location: IOIBUF_X30_Y0_N1
\BusW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusW(7),
	o => \BusW[7]~input_o\);

-- Location: MLABCELL_X25_Y4_N27
\banc~205feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~205feeder_combout\ = \BusW[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BusW[7]~input_o\,
	combout => \banc~205feeder_combout\);

-- Location: FF_X25_Y4_N29
\banc~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~205feeder_combout\,
	ena => \banc~1382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~205_q\);

-- Location: FF_X25_Y5_N44
\banc~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[7]~input_o\,
	sload => VCC,
	ena => \banc~1387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~109_q\);

-- Location: LABCELL_X27_Y5_N30
\banc~77feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~77feeder_combout\ = ( \BusW[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BusW[7]~input_o\,
	combout => \banc~77feeder_combout\);

-- Location: FF_X27_Y5_N31
\banc~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~77feeder_combout\,
	ena => \banc~1385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~77_q\);

-- Location: FF_X25_Y5_N38
\banc~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[7]~input_o\,
	sload => VCC,
	ena => \banc~1386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~141_q\);

-- Location: MLABCELL_X25_Y5_N36
\banc~1325\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1325_combout\ = ( \banc~141_q\ & ( \RA[0]~input_o\ & ( ((\banc~77_q\) # (\RA[2]~input_o\)) # (\RA[1]~input_o\) ) ) ) # ( !\banc~141_q\ & ( \RA[0]~input_o\ & ( ((!\RA[1]~input_o\ & \banc~77_q\)) # (\RA[2]~input_o\) ) ) ) # ( \banc~141_q\ & ( 
-- !\RA[0]~input_o\ & ( (\RA[1]~input_o\ & (\banc~109_q\ & !\RA[2]~input_o\)) ) ) ) # ( !\banc~141_q\ & ( !\RA[0]~input_o\ & ( (\RA[1]~input_o\ & (\banc~109_q\ & !\RA[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000001111101011110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RA[1]~input_o\,
	datab => \ALT_INV_banc~109_q\,
	datac => \ALT_INV_RA[2]~input_o\,
	datad => \ALT_INV_banc~77_q\,
	datae => \ALT_INV_banc~141_q\,
	dataf => \ALT_INV_RA[0]~input_o\,
	combout => \banc~1325_combout\);

-- Location: FF_X28_Y4_N44
\banc~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[7]~input_o\,
	sload => VCC,
	ena => \banc~1388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~237_q\);

-- Location: MLABCELL_X28_Y4_N27
\banc~269feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~269feeder_combout\ = ( \BusW[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BusW[7]~input_o\,
	combout => \banc~269feeder_combout\);

-- Location: FF_X28_Y4_N28
\banc~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~269feeder_combout\,
	ena => \banc~1383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~269_q\);

-- Location: FF_X28_Y4_N20
\banc~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[7]~input_o\,
	sload => VCC,
	ena => \banc~1384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~173_q\);

-- Location: MLABCELL_X28_Y4_N18
\banc~1090\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1090_combout\ = ( !\RA[1]~input_o\ & ( (!\banc~1325_combout\ & (((\banc~173_q\ & (\RA[2]~input_o\))))) # (\banc~1325_combout\ & ((((!\RA[2]~input_o\))) # (\banc~205_q\))) ) ) # ( \RA[1]~input_o\ & ( ((!\banc~1325_combout\ & (\banc~237_q\ & 
-- (\RA[2]~input_o\))) # (\banc~1325_combout\ & (((!\RA[2]~input_o\) # (\banc~269_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100011101001100110000110000110011000111010011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~205_q\,
	datab => \ALT_INV_banc~1325_combout\,
	datac => \ALT_INV_banc~237_q\,
	datad => \ALT_INV_RA[2]~input_o\,
	datae => \ALT_INV_RA[1]~input_o\,
	dataf => \ALT_INV_banc~269_q\,
	datag => \ALT_INV_banc~173_q\,
	combout => \banc~1090_combout\);

-- Location: IOIBUF_X62_Y0_N52
\BusW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusW(8),
	o => \BusW[8]~input_o\);

-- Location: FF_X23_Y4_N55
\banc~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[8]~input_o\,
	sload => VCC,
	ena => \banc~1387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~110_q\);

-- Location: LABCELL_X23_Y5_N3
\banc~78feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~78feeder_combout\ = ( \BusW[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BusW[8]~input_o\,
	combout => \banc~78feeder_combout\);

-- Location: FF_X23_Y5_N4
\banc~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~78feeder_combout\,
	ena => \banc~1385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~78_q\);

-- Location: FF_X23_Y4_N20
\banc~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[8]~input_o\,
	sload => VCC,
	ena => \banc~1386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~142_q\);

-- Location: LABCELL_X23_Y4_N18
\banc~1326\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1326_combout\ = ( \banc~142_q\ & ( \RA[0]~input_o\ & ( ((\RA[1]~input_o\) # (\banc~78_q\)) # (\RA[2]~input_o\) ) ) ) # ( !\banc~142_q\ & ( \RA[0]~input_o\ & ( ((\banc~78_q\ & !\RA[1]~input_o\)) # (\RA[2]~input_o\) ) ) ) # ( \banc~142_q\ & ( 
-- !\RA[0]~input_o\ & ( (!\RA[2]~input_o\ & (\banc~110_q\ & \RA[1]~input_o\)) ) ) ) # ( !\banc~142_q\ & ( !\RA[0]~input_o\ & ( (!\RA[2]~input_o\ & (\banc~110_q\ & \RA[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001001011111010101010101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RA[2]~input_o\,
	datab => \ALT_INV_banc~110_q\,
	datac => \ALT_INV_banc~78_q\,
	datad => \ALT_INV_RA[1]~input_o\,
	datae => \ALT_INV_banc~142_q\,
	dataf => \ALT_INV_RA[0]~input_o\,
	combout => \banc~1326_combout\);

-- Location: FF_X23_Y4_N32
\banc~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[8]~input_o\,
	sload => VCC,
	ena => \banc~1382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~206_q\);

-- Location: FF_X27_Y4_N32
\banc~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[8]~input_o\,
	sload => VCC,
	ena => \banc~1388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~238_q\);

-- Location: LABCELL_X27_Y4_N21
\banc~270feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~270feeder_combout\ = \BusW[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BusW[8]~input_o\,
	combout => \banc~270feeder_combout\);

-- Location: FF_X27_Y4_N22
\banc~270\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~270feeder_combout\,
	ena => \banc~1383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~270_q\);

-- Location: FF_X27_Y4_N38
\banc~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[8]~input_o\,
	sload => VCC,
	ena => \banc~1384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~174_q\);

-- Location: LABCELL_X27_Y4_N36
\banc~1094\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1094_combout\ = ( !\RA[1]~input_o\ & ( (!\banc~1326_combout\ & (((\banc~174_q\ & ((\RA[2]~input_o\)))))) # (\banc~1326_combout\ & ((((!\RA[2]~input_o\))) # (\banc~206_q\))) ) ) # ( \RA[1]~input_o\ & ( (!\banc~1326_combout\ & (((\banc~238_q\ & 
-- ((\RA[2]~input_o\)))))) # (\banc~1326_combout\ & ((((!\RA[2]~input_o\) # (\banc~270_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010101010101010101010101010100011011000110110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~1326_combout\,
	datab => \ALT_INV_banc~206_q\,
	datac => \ALT_INV_banc~238_q\,
	datad => \ALT_INV_banc~270_q\,
	datae => \ALT_INV_RA[1]~input_o\,
	dataf => \ALT_INV_RA[2]~input_o\,
	datag => \ALT_INV_banc~174_q\,
	combout => \banc~1094_combout\);

-- Location: IOIBUF_X60_Y0_N52
\BusW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusW(9),
	o => \BusW[9]~input_o\);

-- Location: FF_X22_Y4_N4
\banc~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[9]~input_o\,
	sload => VCC,
	ena => \banc~1385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~79_q\);

-- Location: FF_X23_Y4_N8
\banc~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[9]~input_o\,
	sload => VCC,
	ena => \banc~1387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~111_q\);

-- Location: FF_X23_Y4_N2
\banc~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[9]~input_o\,
	sload => VCC,
	ena => \banc~1386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~143_q\);

-- Location: LABCELL_X23_Y4_N0
\banc~1327\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1327_combout\ = ( \banc~143_q\ & ( \RA[0]~input_o\ & ( ((\RA[1]~input_o\) # (\banc~79_q\)) # (\RA[2]~input_o\) ) ) ) # ( !\banc~143_q\ & ( \RA[0]~input_o\ & ( ((\banc~79_q\ & !\RA[1]~input_o\)) # (\RA[2]~input_o\) ) ) ) # ( \banc~143_q\ & ( 
-- !\RA[0]~input_o\ & ( (!\RA[2]~input_o\ & (\RA[1]~input_o\ & \banc~111_q\)) ) ) ) # ( !\banc~143_q\ & ( !\RA[0]~input_o\ & ( (!\RA[2]~input_o\ & (\RA[1]~input_o\ & \banc~111_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101001110101011101010111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RA[2]~input_o\,
	datab => \ALT_INV_banc~79_q\,
	datac => \ALT_INV_RA[1]~input_o\,
	datad => \ALT_INV_banc~111_q\,
	datae => \ALT_INV_banc~143_q\,
	dataf => \ALT_INV_RA[0]~input_o\,
	combout => \banc~1327_combout\);

-- Location: FF_X27_Y4_N8
\banc~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[9]~input_o\,
	sload => VCC,
	ena => \banc~1388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~239_q\);

-- Location: FF_X23_Y4_N34
\banc~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[9]~input_o\,
	sload => VCC,
	ena => \banc~1382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~207_q\);

-- Location: LABCELL_X27_Y4_N18
\banc~271feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~271feeder_combout\ = ( \BusW[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BusW[9]~input_o\,
	combout => \banc~271feeder_combout\);

-- Location: FF_X27_Y4_N19
\banc~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~271feeder_combout\,
	ena => \banc~1383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~271_q\);

-- Location: FF_X27_Y4_N14
\banc~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[9]~input_o\,
	sload => VCC,
	ena => \banc~1384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~175_q\);

-- Location: LABCELL_X27_Y4_N12
\banc~1098\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1098_combout\ = ( !\RA[1]~input_o\ & ( (!\RA[2]~input_o\ & (\banc~1327_combout\)) # (\RA[2]~input_o\ & ((!\banc~1327_combout\ & (\banc~175_q\)) # (\banc~1327_combout\ & (((\banc~207_q\)))))) ) ) # ( \RA[1]~input_o\ & ( (!\RA[2]~input_o\ & 
-- (\banc~1327_combout\)) # (\RA[2]~input_o\ & ((!\banc~1327_combout\ & (\banc~239_q\)) # (\banc~1327_combout\ & (((\banc~271_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010011000110111001001100010011000100110001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RA[2]~input_o\,
	datab => \ALT_INV_banc~1327_combout\,
	datac => \ALT_INV_banc~239_q\,
	datad => \ALT_INV_banc~207_q\,
	datae => \ALT_INV_RA[1]~input_o\,
	dataf => \ALT_INV_banc~271_q\,
	datag => \ALT_INV_banc~175_q\,
	combout => \banc~1098_combout\);

-- Location: IOIBUF_X68_Y0_N1
\BusW[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusW(10),
	o => \BusW[10]~input_o\);

-- Location: LABCELL_X23_Y4_N33
\banc~208feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~208feeder_combout\ = ( \BusW[10]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BusW[10]~input_o\,
	combout => \banc~208feeder_combout\);

-- Location: FF_X23_Y4_N35
\banc~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~208feeder_combout\,
	ena => \banc~1382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~208_q\);

-- Location: MLABCELL_X21_Y4_N48
\banc~272feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~272feeder_combout\ = \BusW[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_BusW[10]~input_o\,
	combout => \banc~272feeder_combout\);

-- Location: FF_X21_Y4_N49
\banc~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~272feeder_combout\,
	ena => \banc~1383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~272_q\);

-- Location: FF_X21_Y4_N14
\banc~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[10]~input_o\,
	sload => VCC,
	ena => \banc~1388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~240_q\);

-- Location: FF_X23_Y4_N49
\banc~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[10]~input_o\,
	sload => VCC,
	ena => \banc~1387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~112_q\);

-- Location: FF_X23_Y4_N44
\banc~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[10]~input_o\,
	sload => VCC,
	ena => \banc~1386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~144_q\);

-- Location: LABCELL_X22_Y4_N51
\banc~80feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~80feeder_combout\ = \BusW[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BusW[10]~input_o\,
	combout => \banc~80feeder_combout\);

-- Location: FF_X22_Y4_N52
\banc~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~80feeder_combout\,
	ena => \banc~1385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~80_q\);

-- Location: LABCELL_X23_Y4_N42
\banc~1328\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1328_combout\ = ( \banc~144_q\ & ( \banc~80_q\ & ( ((!\RA[2]~input_o\ & (\banc~112_q\ & \RA[1]~input_o\))) # (\RA[0]~input_o\) ) ) ) # ( !\banc~144_q\ & ( \banc~80_q\ & ( (!\RA[2]~input_o\ & ((!\RA[1]~input_o\ & ((\RA[0]~input_o\))) # 
-- (\RA[1]~input_o\ & (\banc~112_q\ & !\RA[0]~input_o\)))) # (\RA[2]~input_o\ & (((\RA[0]~input_o\)))) ) ) ) # ( \banc~144_q\ & ( !\banc~80_q\ & ( (!\RA[2]~input_o\ & (\RA[1]~input_o\ & ((\RA[0]~input_o\) # (\banc~112_q\)))) # (\RA[2]~input_o\ & 
-- (((\RA[0]~input_o\)))) ) ) ) # ( !\banc~144_q\ & ( !\banc~80_q\ & ( (!\RA[2]~input_o\ & (\banc~112_q\ & (\RA[1]~input_o\ & !\RA[0]~input_o\))) # (\RA[2]~input_o\ & (((\RA[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010101000000100101111100000010111101010000001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RA[2]~input_o\,
	datab => \ALT_INV_banc~112_q\,
	datac => \ALT_INV_RA[1]~input_o\,
	datad => \ALT_INV_RA[0]~input_o\,
	datae => \ALT_INV_banc~144_q\,
	dataf => \ALT_INV_banc~80_q\,
	combout => \banc~1328_combout\);

-- Location: FF_X21_Y4_N20
\banc~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[10]~input_o\,
	sload => VCC,
	ena => \banc~1384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~176_q\);

-- Location: MLABCELL_X21_Y4_N18
\banc~1102\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1102_combout\ = ( !\RA[1]~input_o\ & ( ((!\RA[2]~input_o\ & (((\banc~1328_combout\)))) # (\RA[2]~input_o\ & ((!\banc~1328_combout\ & ((\banc~176_q\))) # (\banc~1328_combout\ & (\banc~208_q\))))) ) ) # ( \RA[1]~input_o\ & ( ((!\RA[2]~input_o\ & 
-- (((\banc~1328_combout\)))) # (\RA[2]~input_o\ & ((!\banc~1328_combout\ & ((\banc~240_q\))) # (\banc~1328_combout\ & (\banc~272_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~208_q\,
	datab => \ALT_INV_banc~272_q\,
	datac => \ALT_INV_banc~240_q\,
	datad => \ALT_INV_RA[2]~input_o\,
	datae => \ALT_INV_RA[1]~input_o\,
	dataf => \ALT_INV_banc~1328_combout\,
	datag => \ALT_INV_banc~176_q\,
	combout => \banc~1102_combout\);

-- Location: IOIBUF_X32_Y0_N18
\BusW[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusW(11),
	o => \BusW[11]~input_o\);

-- Location: FF_X25_Y5_N25
\banc~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[11]~input_o\,
	sload => VCC,
	ena => \banc~1387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~113_q\);

-- Location: LABCELL_X27_Y5_N9
\banc~81feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~81feeder_combout\ = ( \BusW[11]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BusW[11]~input_o\,
	combout => \banc~81feeder_combout\);

-- Location: FF_X27_Y5_N10
\banc~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~81feeder_combout\,
	ena => \banc~1385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~81_q\);

-- Location: FF_X25_Y5_N49
\banc~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[11]~input_o\,
	sload => VCC,
	ena => \banc~1386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~145_q\);

-- Location: MLABCELL_X25_Y5_N48
\banc~1329\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1329_combout\ = ( \banc~145_q\ & ( \RA[0]~input_o\ & ( ((\RA[1]~input_o\) # (\banc~81_q\)) # (\RA[2]~input_o\) ) ) ) # ( !\banc~145_q\ & ( \RA[0]~input_o\ & ( ((\banc~81_q\ & !\RA[1]~input_o\)) # (\RA[2]~input_o\) ) ) ) # ( \banc~145_q\ & ( 
-- !\RA[0]~input_o\ & ( (!\RA[2]~input_o\ & (\banc~113_q\ & \RA[1]~input_o\)) ) ) ) # ( !\banc~145_q\ & ( !\RA[0]~input_o\ & ( (!\RA[2]~input_o\ & (\banc~113_q\ & \RA[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001001011111010101010101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RA[2]~input_o\,
	datab => \ALT_INV_banc~113_q\,
	datac => \ALT_INV_banc~81_q\,
	datad => \ALT_INV_RA[1]~input_o\,
	datae => \ALT_INV_banc~145_q\,
	dataf => \ALT_INV_RA[0]~input_o\,
	combout => \banc~1329_combout\);

-- Location: FF_X25_Y4_N56
\banc~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[11]~input_o\,
	sload => VCC,
	ena => \banc~1388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~241_q\);

-- Location: FF_X28_Y4_N49
\banc~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[11]~input_o\,
	sload => VCC,
	ena => \banc~1383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~273_q\);

-- Location: FF_X25_Y4_N53
\banc~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[11]~input_o\,
	sload => VCC,
	ena => \banc~1382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~209_q\);

-- Location: FF_X25_Y4_N32
\banc~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[11]~input_o\,
	sload => VCC,
	ena => \banc~1384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~177_q\);

-- Location: MLABCELL_X25_Y4_N30
\banc~1106\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1106_combout\ = ( !\RA[1]~input_o\ & ( (!\banc~1329_combout\ & (\RA[2]~input_o\ & (\banc~177_q\))) # (\banc~1329_combout\ & ((!\RA[2]~input_o\) # (((\banc~209_q\))))) ) ) # ( \RA[1]~input_o\ & ( (!\banc~1329_combout\ & (\RA[2]~input_o\ & 
-- (\banc~241_q\))) # (\banc~1329_combout\ & ((!\RA[2]~input_o\) # (((\banc~273_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100011001000110010001100101011101010111010101110100011001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~1329_combout\,
	datab => \ALT_INV_RA[2]~input_o\,
	datac => \ALT_INV_banc~241_q\,
	datad => \ALT_INV_banc~273_q\,
	datae => \ALT_INV_RA[1]~input_o\,
	dataf => \ALT_INV_banc~209_q\,
	datag => \ALT_INV_banc~177_q\,
	combout => \banc~1106_combout\);

-- Location: IOIBUF_X32_Y0_N52
\BusW[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusW(12),
	o => \BusW[12]~input_o\);

-- Location: FF_X28_Y4_N25
\banc~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[12]~input_o\,
	sload => VCC,
	ena => \banc~1383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~274_q\);

-- Location: FF_X25_Y5_N8
\banc~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[12]~input_o\,
	sload => VCC,
	ena => \banc~1387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~114_q\);

-- Location: LABCELL_X27_Y5_N45
\banc~82feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~82feeder_combout\ = ( \BusW[12]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BusW[12]~input_o\,
	combout => \banc~82feeder_combout\);

-- Location: FF_X27_Y5_N46
\banc~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~82feeder_combout\,
	ena => \banc~1385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~82_q\);

-- Location: FF_X25_Y5_N32
\banc~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[12]~input_o\,
	sload => VCC,
	ena => \banc~1386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~146_q\);

-- Location: MLABCELL_X25_Y5_N30
\banc~1330\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1330_combout\ = ( \banc~146_q\ & ( \RA[0]~input_o\ & ( ((\RA[1]~input_o\) # (\banc~82_q\)) # (\RA[2]~input_o\) ) ) ) # ( !\banc~146_q\ & ( \RA[0]~input_o\ & ( ((\banc~82_q\ & !\RA[1]~input_o\)) # (\RA[2]~input_o\) ) ) ) # ( \banc~146_q\ & ( 
-- !\RA[0]~input_o\ & ( (!\RA[2]~input_o\ & (\banc~114_q\ & \RA[1]~input_o\)) ) ) ) # ( !\banc~146_q\ & ( !\RA[0]~input_o\ & ( (!\RA[2]~input_o\ & (\banc~114_q\ & \RA[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001001011111010101010101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RA[2]~input_o\,
	datab => \ALT_INV_banc~114_q\,
	datac => \ALT_INV_banc~82_q\,
	datad => \ALT_INV_RA[1]~input_o\,
	datae => \ALT_INV_banc~146_q\,
	dataf => \ALT_INV_RA[0]~input_o\,
	combout => \banc~1330_combout\);

-- Location: FF_X25_Y4_N2
\banc~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[12]~input_o\,
	sload => VCC,
	ena => \banc~1388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~242_q\);

-- Location: FF_X25_Y4_N26
\banc~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[12]~input_o\,
	sload => VCC,
	ena => \banc~1382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~210_q\);

-- Location: FF_X25_Y4_N8
\banc~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[12]~input_o\,
	sload => VCC,
	ena => \banc~1384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~178_q\);

-- Location: MLABCELL_X25_Y4_N6
\banc~1110\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1110_combout\ = ( !\RA[1]~input_o\ & ( ((!\banc~1330_combout\ & (\banc~178_q\ & (\RA[2]~input_o\))) # (\banc~1330_combout\ & (((!\RA[2]~input_o\) # (\banc~210_q\))))) ) ) # ( \RA[1]~input_o\ & ( (!\banc~1330_combout\ & (((\banc~242_q\ & 
-- (\RA[2]~input_o\))))) # (\banc~1330_combout\ & ((((!\RA[2]~input_o\))) # (\banc~274_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100001100001100110001110100110011001111110011001100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~274_q\,
	datab => \ALT_INV_banc~1330_combout\,
	datac => \ALT_INV_banc~242_q\,
	datad => \ALT_INV_RA[2]~input_o\,
	datae => \ALT_INV_RA[1]~input_o\,
	dataf => \ALT_INV_banc~210_q\,
	datag => \ALT_INV_banc~178_q\,
	combout => \banc~1110_combout\);

-- Location: IOIBUF_X32_Y0_N35
\BusW[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusW(13),
	o => \BusW[13]~input_o\);

-- Location: LABCELL_X29_Y4_N51
\banc~83feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~83feeder_combout\ = \BusW[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_BusW[13]~input_o\,
	combout => \banc~83feeder_combout\);

-- Location: FF_X29_Y4_N52
\banc~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~83feeder_combout\,
	ena => \banc~1385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~83_q\);

-- Location: FF_X24_Y4_N2
\banc~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[13]~input_o\,
	sload => VCC,
	ena => \banc~1386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~147_q\);

-- Location: FF_X24_Y4_N8
\banc~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[13]~input_o\,
	sload => VCC,
	ena => \banc~1387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~115_q\);

-- Location: LABCELL_X24_Y4_N0
\banc~1331\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1331_combout\ = ( \banc~147_q\ & ( \banc~115_q\ & ( (!\RA[2]~input_o\ & (((\RA[0]~input_o\ & \banc~83_q\)) # (\RA[1]~input_o\))) # (\RA[2]~input_o\ & (\RA[0]~input_o\)) ) ) ) # ( !\banc~147_q\ & ( \banc~115_q\ & ( (!\RA[0]~input_o\ & 
-- (((!\RA[2]~input_o\ & \RA[1]~input_o\)))) # (\RA[0]~input_o\ & (((\banc~83_q\ & !\RA[1]~input_o\)) # (\RA[2]~input_o\))) ) ) ) # ( \banc~147_q\ & ( !\banc~115_q\ & ( (\RA[0]~input_o\ & (((\RA[1]~input_o\) # (\RA[2]~input_o\)) # (\banc~83_q\))) ) ) ) # ( 
-- !\banc~147_q\ & ( !\banc~115_q\ & ( (\RA[0]~input_o\ & (((\banc~83_q\ & !\RA[1]~input_o\)) # (\RA[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100000101000101010101010100010101101001010001010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RA[0]~input_o\,
	datab => \ALT_INV_banc~83_q\,
	datac => \ALT_INV_RA[2]~input_o\,
	datad => \ALT_INV_RA[1]~input_o\,
	datae => \ALT_INV_banc~147_q\,
	dataf => \ALT_INV_banc~115_q\,
	combout => \banc~1331_combout\);

-- Location: FF_X28_Y4_N52
\banc~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[13]~input_o\,
	sload => VCC,
	ena => \banc~1383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~275_q\);

-- Location: FF_X25_Y4_N38
\banc~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[13]~input_o\,
	sload => VCC,
	ena => \banc~1388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~243_q\);

-- Location: FF_X25_Y4_N28
\banc~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[13]~input_o\,
	sload => VCC,
	ena => \banc~1382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~211_q\);

-- Location: FF_X25_Y4_N14
\banc~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[13]~input_o\,
	sload => VCC,
	ena => \banc~1384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~179_q\);

-- Location: MLABCELL_X25_Y4_N12
\banc~1114\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1114_combout\ = ( !\RA[1]~input_o\ & ( (!\banc~1331_combout\ & (((\banc~179_q\ & ((\RA[2]~input_o\)))))) # (\banc~1331_combout\ & ((((!\RA[2]~input_o\) # (\banc~211_q\))))) ) ) # ( \RA[1]~input_o\ & ( (!\banc~1331_combout\ & (((\banc~243_q\ & 
-- ((\RA[2]~input_o\)))))) # (\banc~1331_combout\ & ((((!\RA[2]~input_o\))) # (\banc~275_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010101010101010101010101010100001010010111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~1331_combout\,
	datab => \ALT_INV_banc~275_q\,
	datac => \ALT_INV_banc~243_q\,
	datad => \ALT_INV_banc~211_q\,
	datae => \ALT_INV_RA[1]~input_o\,
	dataf => \ALT_INV_RA[2]~input_o\,
	datag => \ALT_INV_banc~179_q\,
	combout => \banc~1114_combout\);

-- Location: IOIBUF_X26_Y0_N92
\BusW[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusW(14),
	o => \BusW[14]~input_o\);

-- Location: MLABCELL_X21_Y4_N51
\banc~276feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~276feeder_combout\ = \BusW[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_BusW[14]~input_o\,
	combout => \banc~276feeder_combout\);

-- Location: FF_X21_Y4_N52
\banc~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~276feeder_combout\,
	ena => \banc~1383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~276_q\);

-- Location: MLABCELL_X21_Y6_N21
\banc~212feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~212feeder_combout\ = \BusW[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_BusW[14]~input_o\,
	combout => \banc~212feeder_combout\);

-- Location: FF_X21_Y6_N23
\banc~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~212feeder_combout\,
	ena => \banc~1382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~212_q\);

-- Location: FF_X21_Y5_N38
\banc~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[14]~input_o\,
	sload => VCC,
	ena => \banc~1388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~244_q\);

-- Location: LABCELL_X23_Y5_N39
\banc~84feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~84feeder_combout\ = ( \BusW[14]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BusW[14]~input_o\,
	combout => \banc~84feeder_combout\);

-- Location: FF_X23_Y5_N41
\banc~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~84feeder_combout\,
	ena => \banc~1385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~84_q\);

-- Location: FF_X23_Y5_N16
\banc~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[14]~input_o\,
	sload => VCC,
	ena => \banc~1387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~116_q\);

-- Location: FF_X23_Y3_N31
\banc~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[14]~input_o\,
	sload => VCC,
	ena => \banc~1386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~148_q\);

-- Location: LABCELL_X23_Y3_N30
\banc~1332\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1332_combout\ = ( \banc~148_q\ & ( \RA[2]~input_o\ & ( \RA[0]~input_o\ ) ) ) # ( !\banc~148_q\ & ( \RA[2]~input_o\ & ( \RA[0]~input_o\ ) ) ) # ( \banc~148_q\ & ( !\RA[2]~input_o\ & ( (!\RA[1]~input_o\ & (\banc~84_q\ & (\RA[0]~input_o\))) # 
-- (\RA[1]~input_o\ & (((\banc~116_q\) # (\RA[0]~input_o\)))) ) ) ) # ( !\banc~148_q\ & ( !\RA[2]~input_o\ & ( (!\RA[1]~input_o\ & (\banc~84_q\ & (\RA[0]~input_o\))) # (\RA[1]~input_o\ & (((!\RA[0]~input_o\ & \banc~116_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100000001110011011100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~84_q\,
	datab => \ALT_INV_RA[1]~input_o\,
	datac => \ALT_INV_RA[0]~input_o\,
	datad => \ALT_INV_banc~116_q\,
	datae => \ALT_INV_banc~148_q\,
	dataf => \ALT_INV_RA[2]~input_o\,
	combout => \banc~1332_combout\);

-- Location: FF_X21_Y5_N2
\banc~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[14]~input_o\,
	sload => VCC,
	ena => \banc~1384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~180_q\);

-- Location: MLABCELL_X21_Y5_N0
\banc~1118\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1118_combout\ = ( !\RA[1]~input_o\ & ( ((!\banc~1332_combout\ & (((\banc~180_q\ & \RA[2]~input_o\)))) # (\banc~1332_combout\ & (((!\RA[2]~input_o\)) # (\banc~212_q\)))) ) ) # ( \RA[1]~input_o\ & ( ((!\banc~1332_combout\ & (((\banc~244_q\ & 
-- \RA[2]~input_o\)))) # (\banc~1332_combout\ & (((!\RA[2]~input_o\)) # (\banc~276_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000000001111111100001111001100110000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~276_q\,
	datab => \ALT_INV_banc~212_q\,
	datac => \ALT_INV_banc~244_q\,
	datad => \ALT_INV_banc~1332_combout\,
	datae => \ALT_INV_RA[1]~input_o\,
	dataf => \ALT_INV_RA[2]~input_o\,
	datag => \ALT_INV_banc~180_q\,
	combout => \banc~1118_combout\);

-- Location: IOIBUF_X28_Y0_N35
\BusW[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusW(15),
	o => \BusW[15]~input_o\);

-- Location: MLABCELL_X25_Y4_N48
\banc~213feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~213feeder_combout\ = ( \BusW[15]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BusW[15]~input_o\,
	combout => \banc~213feeder_combout\);

-- Location: FF_X25_Y4_N50
\banc~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~213feeder_combout\,
	ena => \banc~1382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~213_q\);

-- Location: FF_X28_Y4_N29
\banc~277\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[15]~input_o\,
	sload => VCC,
	ena => \banc~1383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~277_q\);

-- Location: FF_X25_Y4_N44
\banc~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[15]~input_o\,
	sload => VCC,
	ena => \banc~1388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~245_q\);

-- Location: FF_X22_Y4_N49
\banc~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[15]~input_o\,
	sload => VCC,
	ena => \banc~1385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~85_q\);

-- Location: FF_X24_Y4_N50
\banc~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[15]~input_o\,
	sload => VCC,
	ena => \banc~1387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~117_q\);

-- Location: FF_X24_Y4_N44
\banc~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[15]~input_o\,
	sload => VCC,
	ena => \banc~1386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~149_q\);

-- Location: LABCELL_X24_Y4_N42
\banc~1333\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1333_combout\ = ( \banc~149_q\ & ( \RA[0]~input_o\ & ( ((\RA[1]~input_o\) # (\banc~85_q\)) # (\RA[2]~input_o\) ) ) ) # ( !\banc~149_q\ & ( \RA[0]~input_o\ & ( ((\banc~85_q\ & !\RA[1]~input_o\)) # (\RA[2]~input_o\) ) ) ) # ( \banc~149_q\ & ( 
-- !\RA[0]~input_o\ & ( (!\RA[2]~input_o\ & (\banc~117_q\ & \RA[1]~input_o\)) ) ) ) # ( !\banc~149_q\ & ( !\RA[0]~input_o\ & ( (!\RA[2]~input_o\ & (\banc~117_q\ & \RA[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101001110111010101010111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RA[2]~input_o\,
	datab => \ALT_INV_banc~85_q\,
	datac => \ALT_INV_banc~117_q\,
	datad => \ALT_INV_RA[1]~input_o\,
	datae => \ALT_INV_banc~149_q\,
	dataf => \ALT_INV_RA[0]~input_o\,
	combout => \banc~1333_combout\);

-- Location: FF_X25_Y4_N20
\banc~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[15]~input_o\,
	sload => VCC,
	ena => \banc~1384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~181_q\);

-- Location: MLABCELL_X25_Y4_N18
\banc~1122\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1122_combout\ = ( !\RA[1]~input_o\ & ( ((!\RA[2]~input_o\ & (((\banc~1333_combout\)))) # (\RA[2]~input_o\ & ((!\banc~1333_combout\ & ((\banc~181_q\))) # (\banc~1333_combout\ & (\banc~213_q\))))) ) ) # ( \RA[1]~input_o\ & ( ((!\RA[2]~input_o\ & 
-- (((\banc~1333_combout\)))) # (\RA[2]~input_o\ & ((!\banc~1333_combout\ & ((\banc~245_q\))) # (\banc~1333_combout\ & (\banc~277_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~213_q\,
	datab => \ALT_INV_banc~277_q\,
	datac => \ALT_INV_banc~245_q\,
	datad => \ALT_INV_RA[2]~input_o\,
	datae => \ALT_INV_RA[1]~input_o\,
	dataf => \ALT_INV_banc~1333_combout\,
	datag => \ALT_INV_banc~181_q\,
	combout => \banc~1122_combout\);

-- Location: IOIBUF_X34_Y0_N92
\BusW[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusW(16),
	o => \BusW[16]~input_o\);

-- Location: FF_X24_Y4_N32
\banc~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[16]~input_o\,
	sload => VCC,
	ena => \banc~1387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~118_q\);

-- Location: LABCELL_X27_Y5_N18
\banc~86feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~86feeder_combout\ = ( \BusW[16]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BusW[16]~input_o\,
	combout => \banc~86feeder_combout\);

-- Location: FF_X27_Y5_N19
\banc~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~86feeder_combout\,
	ena => \banc~1385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~86_q\);

-- Location: FF_X24_Y4_N56
\banc~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[16]~input_o\,
	sload => VCC,
	ena => \banc~1386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~150_q\);

-- Location: LABCELL_X24_Y4_N54
\banc~1334\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1334_combout\ = ( \banc~150_q\ & ( \RA[0]~input_o\ & ( ((\RA[1]~input_o\) # (\banc~86_q\)) # (\RA[2]~input_o\) ) ) ) # ( !\banc~150_q\ & ( \RA[0]~input_o\ & ( ((\banc~86_q\ & !\RA[1]~input_o\)) # (\RA[2]~input_o\) ) ) ) # ( \banc~150_q\ & ( 
-- !\RA[0]~input_o\ & ( (!\RA[2]~input_o\ & (\banc~118_q\ & \RA[1]~input_o\)) ) ) ) # ( !\banc~150_q\ & ( !\RA[0]~input_o\ & ( (!\RA[2]~input_o\ & (\banc~118_q\ & \RA[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001001011111010101010101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RA[2]~input_o\,
	datab => \ALT_INV_banc~118_q\,
	datac => \ALT_INV_banc~86_q\,
	datad => \ALT_INV_RA[1]~input_o\,
	datae => \ALT_INV_banc~150_q\,
	dataf => \ALT_INV_RA[0]~input_o\,
	combout => \banc~1334_combout\);

-- Location: MLABCELL_X25_Y6_N51
\banc~214feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~214feeder_combout\ = \BusW[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_BusW[16]~input_o\,
	combout => \banc~214feeder_combout\);

-- Location: FF_X25_Y6_N52
\banc~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~214feeder_combout\,
	ena => \banc~1382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~214_q\);

-- Location: FF_X24_Y6_N56
\banc~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[16]~input_o\,
	sload => VCC,
	ena => \banc~1388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~246_q\);

-- Location: MLABCELL_X25_Y6_N57
\banc~278feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~278feeder_combout\ = ( \BusW[16]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BusW[16]~input_o\,
	combout => \banc~278feeder_combout\);

-- Location: FF_X25_Y6_N58
\banc~278\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~278feeder_combout\,
	ena => \banc~1383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~278_q\);

-- Location: FF_X25_Y6_N2
\banc~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[16]~input_o\,
	sload => VCC,
	ena => \banc~1384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~182_q\);

-- Location: MLABCELL_X25_Y6_N0
\banc~1126\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1126_combout\ = ( !\RA[1]~input_o\ & ( (!\banc~1334_combout\ & (((\banc~182_q\ & (\RA[2]~input_o\))))) # (\banc~1334_combout\ & ((((!\RA[2]~input_o\))) # (\banc~214_q\))) ) ) # ( \RA[1]~input_o\ & ( (!\banc~1334_combout\ & (((\banc~246_q\ & 
-- (\RA[2]~input_o\))))) # (\banc~1334_combout\ & ((((!\RA[2]~input_o\) # (\banc~278_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010100011011010101010000101001010101000110110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~1334_combout\,
	datab => \ALT_INV_banc~214_q\,
	datac => \ALT_INV_banc~246_q\,
	datad => \ALT_INV_RA[2]~input_o\,
	datae => \ALT_INV_RA[1]~input_o\,
	dataf => \ALT_INV_banc~278_q\,
	datag => \ALT_INV_banc~182_q\,
	combout => \banc~1126_combout\);

-- Location: IOIBUF_X72_Y0_N35
\BusW[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusW(17),
	o => \BusW[17]~input_o\);

-- Location: FF_X23_Y5_N49
\banc~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[17]~input_o\,
	sload => VCC,
	ena => \banc~1385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~87_q\);

-- Location: FF_X25_Y5_N19
\banc~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[17]~input_o\,
	sload => VCC,
	ena => \banc~1387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~119_q\);

-- Location: FF_X25_Y5_N13
\banc~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[17]~input_o\,
	sload => VCC,
	ena => \banc~1386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~151_q\);

-- Location: MLABCELL_X25_Y5_N12
\banc~1335\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1335_combout\ = ( \banc~151_q\ & ( \RA[0]~input_o\ & ( ((\RA[2]~input_o\) # (\banc~87_q\)) # (\RA[1]~input_o\) ) ) ) # ( !\banc~151_q\ & ( \RA[0]~input_o\ & ( ((!\RA[1]~input_o\ & \banc~87_q\)) # (\RA[2]~input_o\) ) ) ) # ( \banc~151_q\ & ( 
-- !\RA[0]~input_o\ & ( (\RA[1]~input_o\ & (!\RA[2]~input_o\ & \banc~119_q\)) ) ) ) # ( !\banc~151_q\ & ( !\RA[0]~input_o\ & ( (\RA[1]~input_o\ & (!\RA[2]~input_o\ & \banc~119_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000101111001011110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RA[1]~input_o\,
	datab => \ALT_INV_banc~87_q\,
	datac => \ALT_INV_RA[2]~input_o\,
	datad => \ALT_INV_banc~119_q\,
	datae => \ALT_INV_banc~151_q\,
	dataf => \ALT_INV_RA[0]~input_o\,
	combout => \banc~1335_combout\);

-- Location: FF_X25_Y6_N7
\banc~279\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[17]~input_o\,
	sload => VCC,
	ena => \banc~1383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~279_q\);

-- Location: FF_X25_Y5_N2
\banc~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[17]~input_o\,
	sload => VCC,
	ena => \banc~1388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~247_q\);

-- Location: FF_X25_Y6_N32
\banc~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[17]~input_o\,
	sload => VCC,
	ena => \banc~1382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~215_q\);

-- Location: FF_X25_Y6_N38
\banc~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[17]~input_o\,
	sload => VCC,
	ena => \banc~1384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~183_q\);

-- Location: MLABCELL_X25_Y6_N36
\banc~1130\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1130_combout\ = ( !\RA[1]~input_o\ & ( (!\banc~1335_combout\ & (((\banc~183_q\ & (\RA[2]~input_o\))))) # (\banc~1335_combout\ & ((((!\RA[2]~input_o\) # (\banc~215_q\))))) ) ) # ( \RA[1]~input_o\ & ( (!\banc~1335_combout\ & (((\banc~247_q\ & 
-- (\RA[2]~input_o\))))) # (\banc~1335_combout\ & ((((!\RA[2]~input_o\))) # (\banc~279_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010100001010010101010001101101010101010111110101010100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~1335_combout\,
	datab => \ALT_INV_banc~279_q\,
	datac => \ALT_INV_banc~247_q\,
	datad => \ALT_INV_RA[2]~input_o\,
	datae => \ALT_INV_RA[1]~input_o\,
	dataf => \ALT_INV_banc~215_q\,
	datag => \ALT_INV_banc~183_q\,
	combout => \banc~1130_combout\);

-- Location: IOIBUF_X8_Y0_N35
\BusW[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusW(18),
	o => \BusW[18]~input_o\);

-- Location: FF_X22_Y5_N4
\banc~280\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[18]~input_o\,
	sload => VCC,
	ena => \banc~1383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~280_q\);

-- Location: FF_X21_Y6_N56
\banc~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[18]~input_o\,
	sload => VCC,
	ena => \banc~1388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~248_q\);

-- Location: FF_X23_Y6_N35
\banc~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[18]~input_o\,
	sload => VCC,
	ena => \banc~1385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~88_q\);

-- Location: FF_X22_Y6_N38
\banc~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[18]~input_o\,
	sload => VCC,
	ena => \banc~1387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~120_q\);

-- Location: FF_X22_Y6_N32
\banc~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[18]~input_o\,
	sload => VCC,
	ena => \banc~1386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~152_q\);

-- Location: LABCELL_X22_Y6_N30
\banc~1336\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1336_combout\ = ( \banc~152_q\ & ( \RA[0]~input_o\ & ( ((\RA[2]~input_o\) # (\RA[1]~input_o\)) # (\banc~88_q\) ) ) ) # ( !\banc~152_q\ & ( \RA[0]~input_o\ & ( ((\banc~88_q\ & !\RA[1]~input_o\)) # (\RA[2]~input_o\) ) ) ) # ( \banc~152_q\ & ( 
-- !\RA[0]~input_o\ & ( (\RA[1]~input_o\ & (\banc~120_q\ & !\RA[2]~input_o\)) ) ) ) # ( !\banc~152_q\ & ( !\RA[0]~input_o\ & ( (\RA[1]~input_o\ & (\banc~120_q\ & !\RA[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000001000100111111110111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~88_q\,
	datab => \ALT_INV_RA[1]~input_o\,
	datac => \ALT_INV_banc~120_q\,
	datad => \ALT_INV_RA[2]~input_o\,
	datae => \ALT_INV_banc~152_q\,
	dataf => \ALT_INV_RA[0]~input_o\,
	combout => \banc~1336_combout\);

-- Location: FF_X21_Y6_N26
\banc~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[18]~input_o\,
	sload => VCC,
	ena => \banc~1382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~216_q\);

-- Location: FF_X21_Y6_N2
\banc~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[18]~input_o\,
	sload => VCC,
	ena => \banc~1384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~184_q\);

-- Location: MLABCELL_X21_Y6_N0
\banc~1134\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1134_combout\ = ( !\RA[1]~input_o\ & ( (!\RA[2]~input_o\ & ((((\banc~1336_combout\))))) # (\RA[2]~input_o\ & (((!\banc~1336_combout\ & (\banc~184_q\)) # (\banc~1336_combout\ & ((\banc~216_q\)))))) ) ) # ( \RA[1]~input_o\ & ( (!\RA[2]~input_o\ & 
-- ((((\banc~1336_combout\))))) # (\RA[2]~input_o\ & ((!\banc~1336_combout\ & (((\banc~248_q\)))) # (\banc~1336_combout\ & (\banc~280_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010110101010000001011011101100000101111111110000010110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RA[2]~input_o\,
	datab => \ALT_INV_banc~280_q\,
	datac => \ALT_INV_banc~248_q\,
	datad => \ALT_INV_banc~1336_combout\,
	datae => \ALT_INV_RA[1]~input_o\,
	dataf => \ALT_INV_banc~216_q\,
	datag => \ALT_INV_banc~184_q\,
	combout => \banc~1134_combout\);

-- Location: IOIBUF_X2_Y0_N41
\BusW[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusW(19),
	o => \BusW[19]~input_o\);

-- Location: LABCELL_X22_Y5_N39
\banc~281feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~281feeder_combout\ = ( \BusW[19]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BusW[19]~input_o\,
	combout => \banc~281feeder_combout\);

-- Location: FF_X22_Y5_N41
\banc~281\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~281feeder_combout\,
	ena => \banc~1383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~281_q\);

-- Location: FF_X21_Y6_N32
\banc~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[19]~input_o\,
	sload => VCC,
	ena => \banc~1388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~249_q\);

-- Location: FF_X22_Y6_N17
\banc~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[19]~input_o\,
	sload => VCC,
	ena => \banc~1385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~89_q\);

-- Location: FF_X22_Y6_N56
\banc~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[19]~input_o\,
	sload => VCC,
	ena => \banc~1387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~121_q\);

-- Location: FF_X22_Y6_N50
\banc~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[19]~input_o\,
	sload => VCC,
	ena => \banc~1386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~153_q\);

-- Location: LABCELL_X22_Y6_N48
\banc~1337\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1337_combout\ = ( \banc~153_q\ & ( \RA[2]~input_o\ & ( \RA[0]~input_o\ ) ) ) # ( !\banc~153_q\ & ( \RA[2]~input_o\ & ( \RA[0]~input_o\ ) ) ) # ( \banc~153_q\ & ( !\RA[2]~input_o\ & ( (!\RA[0]~input_o\ & (((\banc~121_q\ & \RA[1]~input_o\)))) # 
-- (\RA[0]~input_o\ & (((\RA[1]~input_o\)) # (\banc~89_q\))) ) ) ) # ( !\banc~153_q\ & ( !\RA[2]~input_o\ & ( (!\RA[0]~input_o\ & (((\banc~121_q\ & \RA[1]~input_o\)))) # (\RA[0]~input_o\ & (\banc~89_q\ & ((!\RA[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001010000100010101111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RA[0]~input_o\,
	datab => \ALT_INV_banc~89_q\,
	datac => \ALT_INV_banc~121_q\,
	datad => \ALT_INV_RA[1]~input_o\,
	datae => \ALT_INV_banc~153_q\,
	dataf => \ALT_INV_RA[2]~input_o\,
	combout => \banc~1337_combout\);

-- Location: MLABCELL_X21_Y6_N27
\banc~217feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~217feeder_combout\ = ( \BusW[19]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BusW[19]~input_o\,
	combout => \banc~217feeder_combout\);

-- Location: FF_X21_Y6_N29
\banc~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~217feeder_combout\,
	ena => \banc~1382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~217_q\);

-- Location: FF_X21_Y6_N8
\banc~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[19]~input_o\,
	sload => VCC,
	ena => \banc~1384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~185_q\);

-- Location: MLABCELL_X21_Y6_N6
\banc~1138\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1138_combout\ = ( !\RA[1]~input_o\ & ( (!\RA[2]~input_o\ & ((((\banc~1337_combout\))))) # (\RA[2]~input_o\ & (((!\banc~1337_combout\ & (\banc~185_q\)) # (\banc~1337_combout\ & ((\banc~217_q\)))))) ) ) # ( \RA[1]~input_o\ & ( (!\RA[2]~input_o\ & 
-- ((((\banc~1337_combout\))))) # (\RA[2]~input_o\ & ((!\banc~1337_combout\ & (((\banc~249_q\)))) # (\banc~1337_combout\ & (\banc~281_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010110101010000001011011101100000101111111110000010110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RA[2]~input_o\,
	datab => \ALT_INV_banc~281_q\,
	datac => \ALT_INV_banc~249_q\,
	datad => \ALT_INV_banc~1337_combout\,
	datae => \ALT_INV_RA[1]~input_o\,
	dataf => \ALT_INV_banc~217_q\,
	datag => \ALT_INV_banc~185_q\,
	combout => \banc~1138_combout\);

-- Location: IOIBUF_X26_Y0_N75
\BusW[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusW(20),
	o => \BusW[20]~input_o\);

-- Location: FF_X25_Y6_N11
\banc~282\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[20]~input_o\,
	sload => VCC,
	ena => \banc~1383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~282_q\);

-- Location: FF_X24_Y6_N2
\banc~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[20]~input_o\,
	sload => VCC,
	ena => \banc~1388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~250_q\);

-- Location: MLABCELL_X25_Y6_N33
\banc~218feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~218feeder_combout\ = \BusW[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_BusW[20]~input_o\,
	combout => \banc~218feeder_combout\);

-- Location: FF_X25_Y6_N34
\banc~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~218feeder_combout\,
	ena => \banc~1382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~218_q\);

-- Location: LABCELL_X23_Y6_N6
\banc~90feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~90feeder_combout\ = ( \BusW[20]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BusW[20]~input_o\,
	combout => \banc~90feeder_combout\);

-- Location: FF_X23_Y6_N7
\banc~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~90feeder_combout\,
	ena => \banc~1385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~90_q\);

-- Location: FF_X24_Y6_N26
\banc~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[20]~input_o\,
	sload => VCC,
	ena => \banc~1387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~122_q\);

-- Location: FF_X24_Y4_N38
\banc~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[20]~input_o\,
	sload => VCC,
	ena => \banc~1386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~154_q\);

-- Location: LABCELL_X24_Y4_N36
\banc~1338\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1338_combout\ = ( \banc~154_q\ & ( \RA[0]~input_o\ & ( ((\RA[1]~input_o\) # (\banc~90_q\)) # (\RA[2]~input_o\) ) ) ) # ( !\banc~154_q\ & ( \RA[0]~input_o\ & ( ((\banc~90_q\ & !\RA[1]~input_o\)) # (\RA[2]~input_o\) ) ) ) # ( \banc~154_q\ & ( 
-- !\RA[0]~input_o\ & ( (!\RA[2]~input_o\ & (\banc~122_q\ & \RA[1]~input_o\)) ) ) ) # ( !\banc~154_q\ & ( !\RA[0]~input_o\ & ( (!\RA[2]~input_o\ & (\banc~122_q\ & \RA[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101001110111010101010111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RA[2]~input_o\,
	datab => \ALT_INV_banc~90_q\,
	datac => \ALT_INV_banc~122_q\,
	datad => \ALT_INV_RA[1]~input_o\,
	datae => \ALT_INV_banc~154_q\,
	dataf => \ALT_INV_RA[0]~input_o\,
	combout => \banc~1338_combout\);

-- Location: FF_X24_Y6_N32
\banc~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[20]~input_o\,
	sload => VCC,
	ena => \banc~1384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~186_q\);

-- Location: LABCELL_X24_Y6_N30
\banc~1142\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1142_combout\ = ( !\RA[1]~input_o\ & ( ((!\RA[2]~input_o\ & (((\banc~1338_combout\)))) # (\RA[2]~input_o\ & ((!\banc~1338_combout\ & (\banc~186_q\)) # (\banc~1338_combout\ & ((\banc~218_q\)))))) ) ) # ( \RA[1]~input_o\ & ( (!\RA[2]~input_o\ & 
-- ((((\banc~1338_combout\))))) # (\RA[2]~input_o\ & (((!\banc~1338_combout\ & ((\banc~250_q\))) # (\banc~1338_combout\ & (\banc~282_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111001100111111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~282_q\,
	datab => \ALT_INV_RA[2]~input_o\,
	datac => \ALT_INV_banc~250_q\,
	datad => \ALT_INV_banc~218_q\,
	datae => \ALT_INV_RA[1]~input_o\,
	dataf => \ALT_INV_banc~1338_combout\,
	datag => \ALT_INV_banc~186_q\,
	combout => \banc~1142_combout\);

-- Location: IOIBUF_X70_Y0_N1
\BusW[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusW(21),
	o => \BusW[21]~input_o\);

-- Location: MLABCELL_X25_Y6_N18
\banc~283feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~283feeder_combout\ = ( \BusW[21]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BusW[21]~input_o\,
	combout => \banc~283feeder_combout\);

-- Location: FF_X25_Y6_N19
\banc~283\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~283feeder_combout\,
	ena => \banc~1383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~283_q\);

-- Location: FF_X25_Y6_N14
\banc~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[21]~input_o\,
	sload => VCC,
	ena => \banc~1382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~219_q\);

-- Location: FF_X27_Y6_N14
\banc~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[21]~input_o\,
	sload => VCC,
	ena => \banc~1388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~251_q\);

-- Location: FF_X27_Y6_N32
\banc~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[21]~input_o\,
	sload => VCC,
	ena => \banc~1387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~123_q\);

-- Location: LABCELL_X27_Y5_N57
\banc~91feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~91feeder_combout\ = ( \BusW[21]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BusW[21]~input_o\,
	combout => \banc~91feeder_combout\);

-- Location: FF_X27_Y5_N58
\banc~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~91feeder_combout\,
	ena => \banc~1385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~91_q\);

-- Location: FF_X27_Y5_N2
\banc~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[21]~input_o\,
	sload => VCC,
	ena => \banc~1386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~155_q\);

-- Location: LABCELL_X27_Y5_N0
\banc~1339\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1339_combout\ = ( \banc~155_q\ & ( \RA[1]~input_o\ & ( ((\banc~123_q\ & !\RA[2]~input_o\)) # (\RA[0]~input_o\) ) ) ) # ( !\banc~155_q\ & ( \RA[1]~input_o\ & ( (!\RA[0]~input_o\ & (\banc~123_q\ & !\RA[2]~input_o\)) # (\RA[0]~input_o\ & 
-- ((\RA[2]~input_o\))) ) ) ) # ( \banc~155_q\ & ( !\RA[1]~input_o\ & ( (\RA[0]~input_o\ & ((\RA[2]~input_o\) # (\banc~91_q\))) ) ) ) # ( !\banc~155_q\ & ( !\RA[1]~input_o\ & ( (\RA[0]~input_o\ & ((\RA[2]~input_o\) # (\banc~91_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001101000100001100110111011100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~123_q\,
	datab => \ALT_INV_RA[0]~input_o\,
	datac => \ALT_INV_banc~91_q\,
	datad => \ALT_INV_RA[2]~input_o\,
	datae => \ALT_INV_banc~155_q\,
	dataf => \ALT_INV_RA[1]~input_o\,
	combout => \banc~1339_combout\);

-- Location: FF_X27_Y6_N2
\banc~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[21]~input_o\,
	sload => VCC,
	ena => \banc~1384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~187_q\);

-- Location: LABCELL_X27_Y6_N0
\banc~1146\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1146_combout\ = ( !\RA[1]~input_o\ & ( ((!\banc~1339_combout\ & (((\banc~187_q\ & \RA[2]~input_o\)))) # (\banc~1339_combout\ & (((!\RA[2]~input_o\)) # (\banc~219_q\)))) ) ) # ( \RA[1]~input_o\ & ( ((!\banc~1339_combout\ & (((\banc~251_q\ & 
-- \RA[2]~input_o\)))) # (\banc~1339_combout\ & (((!\RA[2]~input_o\)) # (\banc~283_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000000001111111100001111001100110000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~283_q\,
	datab => \ALT_INV_banc~219_q\,
	datac => \ALT_INV_banc~251_q\,
	datad => \ALT_INV_banc~1339_combout\,
	datae => \ALT_INV_RA[1]~input_o\,
	dataf => \ALT_INV_RA[2]~input_o\,
	datag => \ALT_INV_banc~187_q\,
	combout => \banc~1146_combout\);

-- Location: IOIBUF_X34_Y0_N41
\BusW[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusW(22),
	o => \BusW[22]~input_o\);

-- Location: LABCELL_X23_Y5_N33
\banc~92feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~92feeder_combout\ = ( \BusW[22]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BusW[22]~input_o\,
	combout => \banc~92feeder_combout\);

-- Location: FF_X23_Y5_N34
\banc~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~92feeder_combout\,
	ena => \banc~1385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~92_q\);

-- Location: FF_X23_Y4_N25
\banc~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[22]~input_o\,
	sload => VCC,
	ena => \banc~1387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~124_q\);

-- Location: FF_X24_Y4_N14
\banc~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[22]~input_o\,
	sload => VCC,
	ena => \banc~1386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~156_q\);

-- Location: LABCELL_X24_Y4_N12
\banc~1340\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1340_combout\ = ( \banc~156_q\ & ( \RA[0]~input_o\ & ( ((\RA[1]~input_o\) # (\banc~92_q\)) # (\RA[2]~input_o\) ) ) ) # ( !\banc~156_q\ & ( \RA[0]~input_o\ & ( ((\banc~92_q\ & !\RA[1]~input_o\)) # (\RA[2]~input_o\) ) ) ) # ( \banc~156_q\ & ( 
-- !\RA[0]~input_o\ & ( (!\RA[2]~input_o\ & (\banc~124_q\ & \RA[1]~input_o\)) ) ) ) # ( !\banc~156_q\ & ( !\RA[0]~input_o\ & ( (!\RA[2]~input_o\ & (\banc~124_q\ & \RA[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101001110111010101010111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RA[2]~input_o\,
	datab => \ALT_INV_banc~92_q\,
	datac => \ALT_INV_banc~124_q\,
	datad => \ALT_INV_RA[1]~input_o\,
	datae => \ALT_INV_banc~156_q\,
	dataf => \ALT_INV_RA[0]~input_o\,
	combout => \banc~1340_combout\);

-- Location: FF_X24_Y5_N44
\banc~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[22]~input_o\,
	sload => VCC,
	ena => \banc~1388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~252_q\);

-- Location: LABCELL_X24_Y5_N57
\banc~284feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~284feeder_combout\ = ( \BusW[22]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BusW[22]~input_o\,
	combout => \banc~284feeder_combout\);

-- Location: FF_X24_Y5_N59
\banc~284\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~284feeder_combout\,
	ena => \banc~1383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~284_q\);

-- Location: LABCELL_X23_Y5_N54
\banc~220feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~220feeder_combout\ = ( \BusW[22]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BusW[22]~input_o\,
	combout => \banc~220feeder_combout\);

-- Location: FF_X23_Y5_N56
\banc~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~220feeder_combout\,
	ena => \banc~1382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~220_q\);

-- Location: FF_X24_Y5_N2
\banc~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[22]~input_o\,
	sload => VCC,
	ena => \banc~1384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~188_q\);

-- Location: LABCELL_X24_Y5_N0
\banc~1150\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1150_combout\ = ( !\RA[1]~input_o\ & ( (!\RA[2]~input_o\ & (\banc~1340_combout\)) # (\RA[2]~input_o\ & ((!\banc~1340_combout\ & (\banc~188_q\)) # (\banc~1340_combout\ & (((\banc~220_q\)))))) ) ) # ( \RA[1]~input_o\ & ( (!\RA[2]~input_o\ & 
-- (\banc~1340_combout\)) # (\RA[2]~input_o\ & ((!\banc~1340_combout\ & (\banc~252_q\)) # (\banc~1340_combout\ & (((\banc~284_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010011000100110001001100011011100110111001101110010011000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RA[2]~input_o\,
	datab => \ALT_INV_banc~1340_combout\,
	datac => \ALT_INV_banc~252_q\,
	datad => \ALT_INV_banc~284_q\,
	datae => \ALT_INV_RA[1]~input_o\,
	dataf => \ALT_INV_banc~220_q\,
	datag => \ALT_INV_banc~188_q\,
	combout => \banc~1150_combout\);

-- Location: IOIBUF_X8_Y0_N1
\BusW[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusW(23),
	o => \BusW[23]~input_o\);

-- Location: MLABCELL_X25_Y6_N9
\banc~285feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~285feeder_combout\ = \BusW[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BusW[23]~input_o\,
	combout => \banc~285feeder_combout\);

-- Location: FF_X25_Y6_N10
\banc~285\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~285feeder_combout\,
	ena => \banc~1383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~285_q\);

-- Location: FF_X21_Y6_N38
\banc~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[23]~input_o\,
	sload => VCC,
	ena => \banc~1388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~253_q\);

-- Location: FF_X22_Y6_N8
\banc~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[23]~input_o\,
	sload => VCC,
	ena => \banc~1387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~125_q\);

-- Location: LABCELL_X23_Y6_N30
\banc~93feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~93feeder_combout\ = ( \BusW[23]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BusW[23]~input_o\,
	combout => \banc~93feeder_combout\);

-- Location: FF_X23_Y6_N32
\banc~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~93feeder_combout\,
	ena => \banc~1385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~93_q\);

-- Location: FF_X22_Y6_N2
\banc~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[23]~input_o\,
	sload => VCC,
	ena => \banc~1386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~157_q\);

-- Location: LABCELL_X22_Y6_N0
\banc~1341\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1341_combout\ = ( \banc~157_q\ & ( \RA[2]~input_o\ & ( \RA[0]~input_o\ ) ) ) # ( !\banc~157_q\ & ( \RA[2]~input_o\ & ( \RA[0]~input_o\ ) ) ) # ( \banc~157_q\ & ( !\RA[2]~input_o\ & ( (!\RA[0]~input_o\ & (\banc~125_q\ & ((\RA[1]~input_o\)))) # 
-- (\RA[0]~input_o\ & (((\RA[1]~input_o\) # (\banc~93_q\)))) ) ) ) # ( !\banc~157_q\ & ( !\RA[2]~input_o\ & ( (!\RA[0]~input_o\ & (\banc~125_q\ & ((\RA[1]~input_o\)))) # (\RA[0]~input_o\ & (((\banc~93_q\ & !\RA[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100010000001010111011101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RA[0]~input_o\,
	datab => \ALT_INV_banc~125_q\,
	datac => \ALT_INV_banc~93_q\,
	datad => \ALT_INV_RA[1]~input_o\,
	datae => \ALT_INV_banc~157_q\,
	dataf => \ALT_INV_RA[2]~input_o\,
	combout => \banc~1341_combout\);

-- Location: FF_X21_Y6_N20
\banc~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[23]~input_o\,
	sload => VCC,
	ena => \banc~1382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~221_q\);

-- Location: FF_X21_Y6_N14
\banc~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[23]~input_o\,
	sload => VCC,
	ena => \banc~1384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~189_q\);

-- Location: MLABCELL_X21_Y6_N12
\banc~1154\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1154_combout\ = ( !\RA[1]~input_o\ & ( (!\RA[2]~input_o\ & ((((\banc~1341_combout\))))) # (\RA[2]~input_o\ & (((!\banc~1341_combout\ & (\banc~189_q\)) # (\banc~1341_combout\ & ((\banc~221_q\)))))) ) ) # ( \RA[1]~input_o\ & ( (!\RA[2]~input_o\ & 
-- ((((\banc~1341_combout\))))) # (\RA[2]~input_o\ & ((!\banc~1341_combout\ & (((\banc~253_q\)))) # (\banc~1341_combout\ & (\banc~285_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010110101010000001011011101100000101111111110000010110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RA[2]~input_o\,
	datab => \ALT_INV_banc~285_q\,
	datac => \ALT_INV_banc~253_q\,
	datad => \ALT_INV_banc~1341_combout\,
	datae => \ALT_INV_RA[1]~input_o\,
	dataf => \ALT_INV_banc~221_q\,
	datag => \ALT_INV_banc~189_q\,
	combout => \banc~1154_combout\);

-- Location: IOIBUF_X64_Y0_N35
\BusW[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusW(24),
	o => \BusW[24]~input_o\);

-- Location: FF_X29_Y4_N25
\banc~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[24]~input_o\,
	sload => VCC,
	ena => \banc~1387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~126_q\);

-- Location: LABCELL_X29_Y4_N30
\banc~94feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~94feeder_combout\ = ( \BusW[24]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BusW[24]~input_o\,
	combout => \banc~94feeder_combout\);

-- Location: FF_X29_Y4_N32
\banc~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~94feeder_combout\,
	ena => \banc~1385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~94_q\);

-- Location: FF_X29_Y4_N20
\banc~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[24]~input_o\,
	sload => VCC,
	ena => \banc~1386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~158_q\);

-- Location: LABCELL_X29_Y4_N18
\banc~1342\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1342_combout\ = ( \banc~158_q\ & ( \RA[0]~input_o\ & ( ((\banc~94_q\) # (\RA[1]~input_o\)) # (\RA[2]~input_o\) ) ) ) # ( !\banc~158_q\ & ( \RA[0]~input_o\ & ( ((!\RA[1]~input_o\ & \banc~94_q\)) # (\RA[2]~input_o\) ) ) ) # ( \banc~158_q\ & ( 
-- !\RA[0]~input_o\ & ( (!\RA[2]~input_o\ & (\banc~126_q\ & \RA[1]~input_o\)) ) ) ) # ( !\banc~158_q\ & ( !\RA[0]~input_o\ & ( (!\RA[2]~input_o\ & (\banc~126_q\ & \RA[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001001010101111101010101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RA[2]~input_o\,
	datab => \ALT_INV_banc~126_q\,
	datac => \ALT_INV_RA[1]~input_o\,
	datad => \ALT_INV_banc~94_q\,
	datae => \ALT_INV_banc~158_q\,
	dataf => \ALT_INV_RA[0]~input_o\,
	combout => \banc~1342_combout\);

-- Location: FF_X25_Y6_N49
\banc~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[24]~input_o\,
	sload => VCC,
	ena => \banc~1382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~222_q\);

-- Location: FF_X27_Y6_N20
\banc~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[24]~input_o\,
	sload => VCC,
	ena => \banc~1388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~254_q\);

-- Location: FF_X25_Y6_N55
\banc~286\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[24]~input_o\,
	sload => VCC,
	ena => \banc~1383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~286_q\);

-- Location: FF_X25_Y6_N44
\banc~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[24]~input_o\,
	sload => VCC,
	ena => \banc~1384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~190_q\);

-- Location: MLABCELL_X25_Y6_N42
\banc~1158\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1158_combout\ = ( !\RA[1]~input_o\ & ( (!\banc~1342_combout\ & (((\banc~190_q\ & (\RA[2]~input_o\))))) # (\banc~1342_combout\ & ((((!\RA[2]~input_o\))) # (\banc~222_q\))) ) ) # ( \RA[1]~input_o\ & ( (!\banc~1342_combout\ & (((\banc~254_q\ & 
-- (\RA[2]~input_o\))))) # (\banc~1342_combout\ & ((((!\RA[2]~input_o\) # (\banc~286_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010100011011010101010000101001010101000110110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~1342_combout\,
	datab => \ALT_INV_banc~222_q\,
	datac => \ALT_INV_banc~254_q\,
	datad => \ALT_INV_RA[2]~input_o\,
	datae => \ALT_INV_RA[1]~input_o\,
	dataf => \ALT_INV_banc~286_q\,
	datag => \ALT_INV_banc~190_q\,
	combout => \banc~1158_combout\);

-- Location: IOIBUF_X89_Y8_N55
\BusW[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusW(25),
	o => \BusW[25]~input_o\);

-- Location: MLABCELL_X25_Y6_N6
\banc~287feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~287feeder_combout\ = ( \BusW[25]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BusW[25]~input_o\,
	combout => \banc~287feeder_combout\);

-- Location: FF_X25_Y6_N8
\banc~287\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~287feeder_combout\,
	ena => \banc~1383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~287_q\);

-- Location: FF_X21_Y6_N44
\banc~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[25]~input_o\,
	sload => VCC,
	ena => \banc~1388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~255_q\);

-- Location: LABCELL_X22_Y6_N45
\banc~95feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~95feeder_combout\ = ( \BusW[25]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BusW[25]~input_o\,
	combout => \banc~95feeder_combout\);

-- Location: FF_X22_Y6_N47
\banc~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~95feeder_combout\,
	ena => \banc~1385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~95_q\);

-- Location: FF_X22_Y6_N26
\banc~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[25]~input_o\,
	sload => VCC,
	ena => \banc~1387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~127_q\);

-- Location: FF_X22_Y6_N20
\banc~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[25]~input_o\,
	sload => VCC,
	ena => \banc~1386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~159_q\);

-- Location: LABCELL_X22_Y6_N18
\banc~1343\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1343_combout\ = ( \banc~159_q\ & ( \RA[2]~input_o\ & ( \RA[0]~input_o\ ) ) ) # ( !\banc~159_q\ & ( \RA[2]~input_o\ & ( \RA[0]~input_o\ ) ) ) # ( \banc~159_q\ & ( !\RA[2]~input_o\ & ( (!\RA[0]~input_o\ & (((\banc~127_q\ & \RA[1]~input_o\)))) # 
-- (\RA[0]~input_o\ & (((\RA[1]~input_o\)) # (\banc~95_q\))) ) ) ) # ( !\banc~159_q\ & ( !\RA[2]~input_o\ & ( (!\RA[0]~input_o\ & (((\banc~127_q\ & \RA[1]~input_o\)))) # (\RA[0]~input_o\ & (\banc~95_q\ & ((!\RA[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001010000100010101111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RA[0]~input_o\,
	datab => \ALT_INV_banc~95_q\,
	datac => \ALT_INV_banc~127_q\,
	datad => \ALT_INV_RA[1]~input_o\,
	datae => \ALT_INV_banc~159_q\,
	dataf => \ALT_INV_RA[2]~input_o\,
	combout => \banc~1343_combout\);

-- Location: MLABCELL_X21_Y6_N18
\banc~223feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~223feeder_combout\ = ( \BusW[25]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BusW[25]~input_o\,
	combout => \banc~223feeder_combout\);

-- Location: FF_X21_Y6_N19
\banc~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~223feeder_combout\,
	ena => \banc~1382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~223_q\);

-- Location: FF_X21_Y6_N50
\banc~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[25]~input_o\,
	sload => VCC,
	ena => \banc~1384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~191_q\);

-- Location: MLABCELL_X21_Y6_N48
\banc~1162\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1162_combout\ = ( !\RA[1]~input_o\ & ( (!\RA[2]~input_o\ & ((((\banc~1343_combout\))))) # (\RA[2]~input_o\ & (((!\banc~1343_combout\ & (\banc~191_q\)) # (\banc~1343_combout\ & ((\banc~223_q\)))))) ) ) # ( \RA[1]~input_o\ & ( (!\RA[2]~input_o\ & 
-- ((((\banc~1343_combout\))))) # (\RA[2]~input_o\ & ((!\banc~1343_combout\ & (((\banc~255_q\)))) # (\banc~1343_combout\ & (\banc~287_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010110101010000001011011101100000101111111110000010110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RA[2]~input_o\,
	datab => \ALT_INV_banc~287_q\,
	datac => \ALT_INV_banc~255_q\,
	datad => \ALT_INV_banc~1343_combout\,
	datae => \ALT_INV_RA[1]~input_o\,
	dataf => \ALT_INV_banc~223_q\,
	datag => \ALT_INV_banc~191_q\,
	combout => \banc~1162_combout\);

-- Location: IOIBUF_X89_Y6_N21
\BusW[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusW(26),
	o => \BusW[26]~input_o\);

-- Location: MLABCELL_X25_Y6_N12
\banc~224feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~224feeder_combout\ = ( \BusW[26]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BusW[26]~input_o\,
	combout => \banc~224feeder_combout\);

-- Location: FF_X25_Y6_N13
\banc~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~224feeder_combout\,
	ena => \banc~1382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~224_q\);

-- Location: MLABCELL_X25_Y6_N54
\banc~288feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~288feeder_combout\ = \BusW[26]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_BusW[26]~input_o\,
	combout => \banc~288feeder_combout\);

-- Location: FF_X25_Y6_N56
\banc~288\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~288feeder_combout\,
	ena => \banc~1383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~288_q\);

-- Location: FF_X24_Y6_N38
\banc~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[26]~input_o\,
	sload => VCC,
	ena => \banc~1388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~256_q\);

-- Location: FF_X23_Y6_N26
\banc~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[26]~input_o\,
	sload => VCC,
	ena => \banc~1387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~128_q\);

-- Location: FF_X23_Y6_N14
\banc~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[26]~input_o\,
	sload => VCC,
	ena => \banc~1385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~96_q\);

-- Location: FF_X23_Y6_N53
\banc~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[26]~input_o\,
	sload => VCC,
	ena => \banc~1386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~160_q\);

-- Location: LABCELL_X23_Y6_N51
\banc~1344\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1344_combout\ = ( \banc~160_q\ & ( \RA[0]~input_o\ & ( ((\RA[1]~input_o\) # (\banc~96_q\)) # (\RA[2]~input_o\) ) ) ) # ( !\banc~160_q\ & ( \RA[0]~input_o\ & ( ((\banc~96_q\ & !\RA[1]~input_o\)) # (\RA[2]~input_o\) ) ) ) # ( \banc~160_q\ & ( 
-- !\RA[0]~input_o\ & ( (\banc~128_q\ & (!\RA[2]~input_o\ & \RA[1]~input_o\)) ) ) ) # ( !\banc~160_q\ & ( !\RA[0]~input_o\ & ( (\banc~128_q\ & (!\RA[2]~input_o\ & \RA[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000111111001100110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~128_q\,
	datab => \ALT_INV_RA[2]~input_o\,
	datac => \ALT_INV_banc~96_q\,
	datad => \ALT_INV_RA[1]~input_o\,
	datae => \ALT_INV_banc~160_q\,
	dataf => \ALT_INV_RA[0]~input_o\,
	combout => \banc~1344_combout\);

-- Location: FF_X24_Y6_N8
\banc~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[26]~input_o\,
	sload => VCC,
	ena => \banc~1384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~192_q\);

-- Location: LABCELL_X24_Y6_N6
\banc~1166\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1166_combout\ = ( !\RA[1]~input_o\ & ( ((!\RA[2]~input_o\ & (((\banc~1344_combout\)))) # (\RA[2]~input_o\ & ((!\banc~1344_combout\ & ((\banc~192_q\))) # (\banc~1344_combout\ & (\banc~224_q\))))) ) ) # ( \RA[1]~input_o\ & ( ((!\RA[2]~input_o\ & 
-- (((\banc~1344_combout\)))) # (\RA[2]~input_o\ & ((!\banc~1344_combout\ & ((\banc~256_q\))) # (\banc~1344_combout\ & (\banc~288_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~224_q\,
	datab => \ALT_INV_banc~288_q\,
	datac => \ALT_INV_banc~256_q\,
	datad => \ALT_INV_RA[2]~input_o\,
	datae => \ALT_INV_RA[1]~input_o\,
	dataf => \ALT_INV_banc~1344_combout\,
	datag => \ALT_INV_banc~192_q\,
	combout => \banc~1166_combout\);

-- Location: IOIBUF_X66_Y0_N41
\BusW[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusW(27),
	o => \BusW[27]~input_o\);

-- Location: FF_X25_Y6_N35
\banc~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[27]~input_o\,
	sload => VCC,
	ena => \banc~1382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~225_q\);

-- Location: LABCELL_X22_Y4_N0
\banc~97feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~97feeder_combout\ = ( \BusW[27]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BusW[27]~input_o\,
	combout => \banc~97feeder_combout\);

-- Location: FF_X22_Y4_N2
\banc~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~97feeder_combout\,
	ena => \banc~1385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~97_q\);

-- Location: FF_X22_Y4_N55
\banc~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[27]~input_o\,
	sload => VCC,
	ena => \banc~1387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~129_q\);

-- Location: FF_X22_Y4_N19
\banc~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[27]~input_o\,
	sload => VCC,
	ena => \banc~1386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~161_q\);

-- Location: LABCELL_X22_Y4_N18
\banc~1345\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1345_combout\ = ( \banc~161_q\ & ( \RA[0]~input_o\ & ( ((\banc~97_q\) # (\RA[2]~input_o\)) # (\RA[1]~input_o\) ) ) ) # ( !\banc~161_q\ & ( \RA[0]~input_o\ & ( ((!\RA[1]~input_o\ & \banc~97_q\)) # (\RA[2]~input_o\) ) ) ) # ( \banc~161_q\ & ( 
-- !\RA[0]~input_o\ & ( (\RA[1]~input_o\ & (!\RA[2]~input_o\ & \banc~129_q\)) ) ) ) # ( !\banc~161_q\ & ( !\RA[0]~input_o\ & ( (\RA[1]~input_o\ & (!\RA[2]~input_o\ & \banc~129_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000111011001110110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RA[1]~input_o\,
	datab => \ALT_INV_RA[2]~input_o\,
	datac => \ALT_INV_banc~97_q\,
	datad => \ALT_INV_banc~129_q\,
	datae => \ALT_INV_banc~161_q\,
	dataf => \ALT_INV_RA[0]~input_o\,
	combout => \banc~1345_combout\);

-- Location: FF_X24_Y6_N44
\banc~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[27]~input_o\,
	sload => VCC,
	ena => \banc~1388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~257_q\);

-- Location: FF_X25_Y6_N59
\banc~289\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[27]~input_o\,
	sload => VCC,
	ena => \banc~1383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~289_q\);

-- Location: FF_X24_Y6_N14
\banc~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[27]~input_o\,
	sload => VCC,
	ena => \banc~1384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~193_q\);

-- Location: LABCELL_X24_Y6_N12
\banc~1170\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1170_combout\ = ( !\RA[1]~input_o\ & ( (!\banc~1345_combout\ & (((\banc~193_q\ & ((\RA[2]~input_o\)))))) # (\banc~1345_combout\ & ((((!\RA[2]~input_o\))) # (\banc~225_q\))) ) ) # ( \RA[1]~input_o\ & ( ((!\banc~1345_combout\ & (\banc~257_q\ & 
-- ((\RA[2]~input_o\)))) # (\banc~1345_combout\ & (((!\RA[2]~input_o\) # (\banc~289_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100110011001100110011001100011101000111010000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~225_q\,
	datab => \ALT_INV_banc~1345_combout\,
	datac => \ALT_INV_banc~257_q\,
	datad => \ALT_INV_banc~289_q\,
	datae => \ALT_INV_RA[1]~input_o\,
	dataf => \ALT_INV_RA[2]~input_o\,
	datag => \ALT_INV_banc~193_q\,
	combout => \banc~1170_combout\);

-- Location: IOIBUF_X26_Y0_N41
\BusW[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusW(28),
	o => \BusW[28]~input_o\);

-- Location: MLABCELL_X25_Y6_N30
\banc~226feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~226feeder_combout\ = \BusW[28]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_BusW[28]~input_o\,
	combout => \banc~226feeder_combout\);

-- Location: FF_X25_Y6_N31
\banc~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~226feeder_combout\,
	ena => \banc~1382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~226_q\);

-- Location: LABCELL_X23_Y3_N6
\banc~290feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~290feeder_combout\ = ( \BusW[28]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BusW[28]~input_o\,
	combout => \banc~290feeder_combout\);

-- Location: FF_X23_Y3_N8
\banc~290\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~290feeder_combout\,
	ena => \banc~1383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~290_q\);

-- Location: FF_X24_Y5_N50
\banc~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[28]~input_o\,
	sload => VCC,
	ena => \banc~1388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~258_q\);

-- Location: FF_X23_Y3_N20
\banc~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[28]~input_o\,
	sload => VCC,
	ena => \banc~1387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~130_q\);

-- Location: LABCELL_X23_Y6_N15
\banc~98feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~98feeder_combout\ = ( \BusW[28]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BusW[28]~input_o\,
	combout => \banc~98feeder_combout\);

-- Location: FF_X23_Y6_N17
\banc~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~98feeder_combout\,
	ena => \banc~1385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~98_q\);

-- Location: FF_X23_Y3_N17
\banc~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[28]~input_o\,
	sload => VCC,
	ena => \banc~1386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~162_q\);

-- Location: LABCELL_X23_Y3_N15
\banc~1346\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1346_combout\ = ( \banc~162_q\ & ( \RA[2]~input_o\ & ( \RA[0]~input_o\ ) ) ) # ( !\banc~162_q\ & ( \RA[2]~input_o\ & ( \RA[0]~input_o\ ) ) ) # ( \banc~162_q\ & ( !\RA[2]~input_o\ & ( (!\RA[0]~input_o\ & (\banc~130_q\ & (\RA[1]~input_o\))) # 
-- (\RA[0]~input_o\ & (((\banc~98_q\) # (\RA[1]~input_o\)))) ) ) ) # ( !\banc~162_q\ & ( !\RA[2]~input_o\ & ( (!\RA[0]~input_o\ & (\banc~130_q\ & (\RA[1]~input_o\))) # (\RA[0]~input_o\ & (((!\RA[1]~input_o\ & \banc~98_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010000001110101011101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RA[0]~input_o\,
	datab => \ALT_INV_banc~130_q\,
	datac => \ALT_INV_RA[1]~input_o\,
	datad => \ALT_INV_banc~98_q\,
	datae => \ALT_INV_banc~162_q\,
	dataf => \ALT_INV_RA[2]~input_o\,
	combout => \banc~1346_combout\);

-- Location: FF_X24_Y5_N41
\banc~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[28]~input_o\,
	sload => VCC,
	ena => \banc~1384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~194_q\);

-- Location: LABCELL_X24_Y5_N39
\banc~1174\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1174_combout\ = ( !\RA[1]~input_o\ & ( ((!\RA[2]~input_o\ & (((\banc~1346_combout\)))) # (\RA[2]~input_o\ & ((!\banc~1346_combout\ & ((\banc~194_q\))) # (\banc~1346_combout\ & (\banc~226_q\))))) ) ) # ( \RA[1]~input_o\ & ( ((!\RA[2]~input_o\ & 
-- (((\banc~1346_combout\)))) # (\RA[2]~input_o\ & ((!\banc~1346_combout\ & ((\banc~258_q\))) # (\banc~1346_combout\ & (\banc~290_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~226_q\,
	datab => \ALT_INV_banc~290_q\,
	datac => \ALT_INV_banc~258_q\,
	datad => \ALT_INV_RA[2]~input_o\,
	datae => \ALT_INV_RA[1]~input_o\,
	dataf => \ALT_INV_banc~1346_combout\,
	datag => \ALT_INV_banc~194_q\,
	combout => \banc~1174_combout\);

-- Location: IOIBUF_X66_Y0_N75
\BusW[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusW(29),
	o => \BusW[29]~input_o\);

-- Location: MLABCELL_X25_Y6_N48
\banc~227feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~227feeder_combout\ = \BusW[29]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_BusW[29]~input_o\,
	combout => \banc~227feeder_combout\);

-- Location: FF_X25_Y6_N50
\banc~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~227feeder_combout\,
	ena => \banc~1382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~227_q\);

-- Location: FF_X25_Y6_N20
\banc~291\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[29]~input_o\,
	sload => VCC,
	ena => \banc~1383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~291_q\);

-- Location: FF_X27_Y6_N56
\banc~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[29]~input_o\,
	sload => VCC,
	ena => \banc~1388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~259_q\);

-- Location: FF_X27_Y5_N53
\banc~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[29]~input_o\,
	sload => VCC,
	ena => \banc~1387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~131_q\);

-- Location: LABCELL_X27_Y5_N39
\banc~99feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~99feeder_combout\ = ( \BusW[29]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BusW[29]~input_o\,
	combout => \banc~99feeder_combout\);

-- Location: FF_X27_Y5_N40
\banc~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~99feeder_combout\,
	ena => \banc~1385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~99_q\);

-- Location: FF_X27_Y5_N14
\banc~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[29]~input_o\,
	sload => VCC,
	ena => \banc~1386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~163_q\);

-- Location: LABCELL_X27_Y5_N12
\banc~1347\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1347_combout\ = ( \banc~163_q\ & ( \RA[1]~input_o\ & ( ((!\RA[2]~input_o\ & \banc~131_q\)) # (\RA[0]~input_o\) ) ) ) # ( !\banc~163_q\ & ( \RA[1]~input_o\ & ( (!\RA[2]~input_o\ & (!\RA[0]~input_o\ & \banc~131_q\)) # (\RA[2]~input_o\ & 
-- (\RA[0]~input_o\)) ) ) ) # ( \banc~163_q\ & ( !\RA[1]~input_o\ & ( (\RA[0]~input_o\ & ((\banc~99_q\) # (\RA[2]~input_o\))) ) ) ) # ( !\banc~163_q\ & ( !\RA[1]~input_o\ & ( (\RA[0]~input_o\ & ((\banc~99_q\) # (\RA[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100110011000100010011001100011001000110010011101100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RA[2]~input_o\,
	datab => \ALT_INV_RA[0]~input_o\,
	datac => \ALT_INV_banc~131_q\,
	datad => \ALT_INV_banc~99_q\,
	datae => \ALT_INV_banc~163_q\,
	dataf => \ALT_INV_RA[1]~input_o\,
	combout => \banc~1347_combout\);

-- Location: FF_X27_Y6_N38
\banc~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[29]~input_o\,
	sload => VCC,
	ena => \banc~1384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~195_q\);

-- Location: LABCELL_X27_Y6_N36
\banc~1178\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1178_combout\ = ( !\RA[1]~input_o\ & ( ((!\banc~1347_combout\ & (((\banc~195_q\ & \RA[2]~input_o\)))) # (\banc~1347_combout\ & (((!\RA[2]~input_o\)) # (\banc~227_q\)))) ) ) # ( \RA[1]~input_o\ & ( ((!\banc~1347_combout\ & (((\banc~259_q\ & 
-- \RA[2]~input_o\)))) # (\banc~1347_combout\ & (((!\RA[2]~input_o\)) # (\banc~291_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000000001111111100001111010101010000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~227_q\,
	datab => \ALT_INV_banc~291_q\,
	datac => \ALT_INV_banc~259_q\,
	datad => \ALT_INV_banc~1347_combout\,
	datae => \ALT_INV_RA[1]~input_o\,
	dataf => \ALT_INV_RA[2]~input_o\,
	datag => \ALT_INV_banc~195_q\,
	combout => \banc~1178_combout\);

-- Location: IOIBUF_X89_Y6_N38
\BusW[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusW(30),
	o => \BusW[30]~input_o\);

-- Location: FF_X25_Y6_N53
\banc~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[30]~input_o\,
	sload => VCC,
	ena => \banc~1382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~228_q\);

-- Location: FF_X24_Y6_N50
\banc~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[30]~input_o\,
	sload => VCC,
	ena => \banc~1388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~260_q\);

-- Location: FF_X25_Y6_N22
\banc~292\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[30]~input_o\,
	sload => VCC,
	ena => \banc~1383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~292_q\);

-- Location: FF_X23_Y6_N44
\banc~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[30]~input_o\,
	sload => VCC,
	ena => \banc~1387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~132_q\);

-- Location: LABCELL_X23_Y6_N0
\banc~100feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~100feeder_combout\ = ( \BusW[30]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BusW[30]~input_o\,
	combout => \banc~100feeder_combout\);

-- Location: FF_X23_Y6_N2
\banc~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~100feeder_combout\,
	ena => \banc~1385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~100_q\);

-- Location: FF_X23_Y6_N37
\banc~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[30]~input_o\,
	sload => VCC,
	ena => \banc~1386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~164_q\);

-- Location: LABCELL_X23_Y6_N36
\banc~1348\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1348_combout\ = ( \banc~164_q\ & ( \RA[0]~input_o\ & ( ((\RA[2]~input_o\) # (\banc~100_q\)) # (\RA[1]~input_o\) ) ) ) # ( !\banc~164_q\ & ( \RA[0]~input_o\ & ( ((!\RA[1]~input_o\ & \banc~100_q\)) # (\RA[2]~input_o\) ) ) ) # ( \banc~164_q\ & ( 
-- !\RA[0]~input_o\ & ( (\RA[1]~input_o\ & (\banc~132_q\ & !\RA[2]~input_o\)) ) ) ) # ( !\banc~164_q\ & ( !\RA[0]~input_o\ & ( (\RA[1]~input_o\ & (\banc~132_q\ & !\RA[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000000001010111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RA[1]~input_o\,
	datab => \ALT_INV_banc~132_q\,
	datac => \ALT_INV_banc~100_q\,
	datad => \ALT_INV_RA[2]~input_o\,
	datae => \ALT_INV_banc~164_q\,
	dataf => \ALT_INV_RA[0]~input_o\,
	combout => \banc~1348_combout\);

-- Location: FF_X24_Y6_N20
\banc~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[30]~input_o\,
	sload => VCC,
	ena => \banc~1384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~196_q\);

-- Location: LABCELL_X24_Y6_N18
\banc~1182\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1182_combout\ = ( !\RA[1]~input_o\ & ( (!\RA[2]~input_o\ & ((((\banc~1348_combout\))))) # (\RA[2]~input_o\ & (((!\banc~1348_combout\ & ((\banc~196_q\))) # (\banc~1348_combout\ & (\banc~228_q\))))) ) ) # ( \RA[1]~input_o\ & ( ((!\RA[2]~input_o\ & 
-- (((\banc~1348_combout\)))) # (\RA[2]~input_o\ & ((!\banc~1348_combout\ & (\banc~260_q\)) # (\banc~1348_combout\ & ((\banc~292_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111011101110111011100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~228_q\,
	datab => \ALT_INV_RA[2]~input_o\,
	datac => \ALT_INV_banc~260_q\,
	datad => \ALT_INV_banc~292_q\,
	datae => \ALT_INV_RA[1]~input_o\,
	dataf => \ALT_INV_banc~1348_combout\,
	datag => \ALT_INV_banc~196_q\,
	combout => \banc~1182_combout\);

-- Location: IOIBUF_X30_Y0_N35
\BusW[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BusW(31),
	o => \BusW[31]~input_o\);

-- Location: FF_X27_Y4_N26
\banc~293\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[31]~input_o\,
	sload => VCC,
	ena => \banc~1383_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~293_q\);

-- Location: LABCELL_X24_Y3_N39
\banc~101feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~101feeder_combout\ = ( \BusW[31]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BusW[31]~input_o\,
	combout => \banc~101feeder_combout\);

-- Location: FF_X24_Y3_N40
\banc~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~101feeder_combout\,
	ena => \banc~1385_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~101_q\);

-- Location: FF_X24_Y4_N26
\banc~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[31]~input_o\,
	sload => VCC,
	ena => \banc~1387_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~133_q\);

-- Location: FF_X24_Y4_N20
\banc~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[31]~input_o\,
	sload => VCC,
	ena => \banc~1386_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~165_q\);

-- Location: LABCELL_X24_Y4_N18
\banc~1349\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1349_combout\ = ( \banc~165_q\ & ( \RA[0]~input_o\ & ( ((\RA[1]~input_o\) # (\banc~101_q\)) # (\RA[2]~input_o\) ) ) ) # ( !\banc~165_q\ & ( \RA[0]~input_o\ & ( ((\banc~101_q\ & !\RA[1]~input_o\)) # (\RA[2]~input_o\) ) ) ) # ( \banc~165_q\ & ( 
-- !\RA[0]~input_o\ & ( (!\RA[2]~input_o\ & (\banc~133_q\ & \RA[1]~input_o\)) ) ) ) # ( !\banc~165_q\ & ( !\RA[0]~input_o\ & ( (!\RA[2]~input_o\ & (\banc~133_q\ & \RA[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101001110111010101010111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RA[2]~input_o\,
	datab => \ALT_INV_banc~101_q\,
	datac => \ALT_INV_banc~133_q\,
	datad => \ALT_INV_RA[1]~input_o\,
	datae => \ALT_INV_banc~165_q\,
	dataf => \ALT_INV_RA[0]~input_o\,
	combout => \banc~1349_combout\);

-- Location: FF_X27_Y4_N44
\banc~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[31]~input_o\,
	sload => VCC,
	ena => \banc~1388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~261_q\);

-- Location: LABCELL_X24_Y3_N33
\banc~229feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~229feeder_combout\ = ( \BusW[31]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_BusW[31]~input_o\,
	combout => \banc~229feeder_combout\);

-- Location: FF_X24_Y3_N34
\banc~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \banc~229feeder_combout\,
	ena => \banc~1382_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~229_q\);

-- Location: FF_X27_Y4_N50
\banc~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \BusW[31]~input_o\,
	sload => VCC,
	ena => \banc~1384_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \banc~197_q\);

-- Location: LABCELL_X27_Y4_N48
\banc~1186\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1186_combout\ = ( !\RA[1]~input_o\ & ( ((!\banc~1349_combout\ & (\banc~197_q\ & ((\RA[2]~input_o\)))) # (\banc~1349_combout\ & (((!\RA[2]~input_o\) # (\banc~229_q\))))) ) ) # ( \RA[1]~input_o\ & ( (!\banc~1349_combout\ & (((\banc~261_q\ & 
-- ((\RA[2]~input_o\)))))) # (\banc~1349_combout\ & ((((!\RA[2]~input_o\))) # (\banc~293_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100110011001100110011001100001100001111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~293_q\,
	datab => \ALT_INV_banc~1349_combout\,
	datac => \ALT_INV_banc~261_q\,
	datad => \ALT_INV_banc~229_q\,
	datae => \ALT_INV_RA[1]~input_o\,
	dataf => \ALT_INV_RA[2]~input_o\,
	datag => \ALT_INV_banc~197_q\,
	combout => \banc~1186_combout\);

-- Location: IOIBUF_X28_Y0_N18
\RB[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(2),
	o => \RB[2]~input_o\);

-- Location: IOIBUF_X28_Y0_N52
\RB[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(0),
	o => \RB[0]~input_o\);

-- Location: IOIBUF_X30_Y0_N52
\RB[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(1),
	o => \RB[1]~input_o\);

-- Location: LABCELL_X29_Y4_N12
\banc~1350\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1350_combout\ = ( \banc~102_q\ & ( \RB[1]~input_o\ & ( (!\RB[0]~input_o\ & (!\RB[2]~input_o\)) # (\RB[0]~input_o\ & ((\banc~134_q\) # (\RB[2]~input_o\))) ) ) ) # ( !\banc~102_q\ & ( \RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\banc~134_q\) # 
-- (\RB[2]~input_o\))) ) ) ) # ( \banc~102_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\banc~70_q\) # (\RB[2]~input_o\))) ) ) ) # ( !\banc~102_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\banc~70_q\) # (\RB[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100010001010101011001100111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RB[0]~input_o\,
	datab => \ALT_INV_RB[2]~input_o\,
	datac => \ALT_INV_banc~70_q\,
	datad => \ALT_INV_banc~134_q\,
	datae => \ALT_INV_banc~102_q\,
	dataf => \ALT_INV_RB[1]~input_o\,
	combout => \banc~1350_combout\);

-- Location: MLABCELL_X28_Y4_N54
\banc~1190\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1190_combout\ = ( !\RB[1]~input_o\ & ( (!\RB[2]~input_o\ & ((((\banc~1350_combout\))))) # (\RB[2]~input_o\ & ((!\banc~1350_combout\ & (((\banc~166_q\)))) # (\banc~1350_combout\ & (\banc~198_q\)))) ) ) # ( \RB[1]~input_o\ & ( ((!\RB[2]~input_o\ & 
-- (((\banc~1350_combout\)))) # (\RB[2]~input_o\ & ((!\banc~1350_combout\ & (\banc~230_q\)) # (\banc~1350_combout\ & ((\banc~262_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001111011101000000111100110000000011110111010000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~198_q\,
	datab => \ALT_INV_RB[2]~input_o\,
	datac => \ALT_INV_banc~230_q\,
	datad => \ALT_INV_banc~1350_combout\,
	datae => \ALT_INV_RB[1]~input_o\,
	dataf => \ALT_INV_banc~262_q\,
	datag => \ALT_INV_banc~166_q\,
	combout => \banc~1190_combout\);

-- Location: LABCELL_X29_Y4_N0
\banc~1351\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1351_combout\ = ( \banc~103_q\ & ( \RB[1]~input_o\ & ( (!\RB[2]~input_o\ & ((!\RB[0]~input_o\) # (\banc~135_q\))) # (\RB[2]~input_o\ & ((\RB[0]~input_o\))) ) ) ) # ( !\banc~103_q\ & ( \RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\RB[2]~input_o\) # 
-- (\banc~135_q\))) ) ) ) # ( \banc~103_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\banc~71_q\) # (\RB[2]~input_o\))) ) ) ) # ( !\banc~103_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\banc~71_q\) # (\RB[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111100000000011101111100110001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~135_q\,
	datab => \ALT_INV_RB[2]~input_o\,
	datac => \ALT_INV_banc~71_q\,
	datad => \ALT_INV_RB[0]~input_o\,
	datae => \ALT_INV_banc~103_q\,
	dataf => \ALT_INV_RB[1]~input_o\,
	combout => \banc~1351_combout\);

-- Location: MLABCELL_X28_Y4_N0
\banc~1194\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1194_combout\ = ( !\RB[1]~input_o\ & ( (!\banc~1351_combout\ & (((\banc~167_q\ & (\RB[2]~input_o\))))) # (\banc~1351_combout\ & ((((!\RB[2]~input_o\))) # (\banc~199_q\))) ) ) # ( \RB[1]~input_o\ & ( (!\banc~1351_combout\ & (((\banc~231_q\ & 
-- (\RB[2]~input_o\))))) # (\banc~1351_combout\ & ((((!\RB[2]~input_o\) # (\banc~263_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010100011011010101010000101001010101000110110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~1351_combout\,
	datab => \ALT_INV_banc~199_q\,
	datac => \ALT_INV_banc~231_q\,
	datad => \ALT_INV_RB[2]~input_o\,
	datae => \ALT_INV_RB[1]~input_o\,
	dataf => \ALT_INV_banc~263_q\,
	datag => \ALT_INV_banc~167_q\,
	combout => \banc~1194_combout\);

-- Location: LABCELL_X22_Y4_N12
\banc~1352\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1352_combout\ = ( \banc~104_q\ & ( \RB[1]~input_o\ & ( (!\RB[2]~input_o\ & ((!\RB[0]~input_o\) # (\banc~136_q\))) # (\RB[2]~input_o\ & ((\RB[0]~input_o\))) ) ) ) # ( !\banc~104_q\ & ( \RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\banc~136_q\) # 
-- (\RB[2]~input_o\))) ) ) ) # ( \banc~104_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\banc~72_q\) # (\RB[2]~input_o\))) ) ) ) # ( !\banc~104_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\banc~72_q\) # (\RB[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100000000011101111010101001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RB[2]~input_o\,
	datab => \ALT_INV_banc~136_q\,
	datac => \ALT_INV_banc~72_q\,
	datad => \ALT_INV_RB[0]~input_o\,
	datae => \ALT_INV_banc~104_q\,
	dataf => \ALT_INV_RB[1]~input_o\,
	combout => \banc~1352_combout\);

-- Location: MLABCELL_X21_Y4_N54
\banc~1198\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1198_combout\ = ( !\RB[1]~input_o\ & ( ((!\RB[2]~input_o\ & (((\banc~1352_combout\)))) # (\RB[2]~input_o\ & ((!\banc~1352_combout\ & (\banc~168_q\)) # (\banc~1352_combout\ & ((\banc~200_q\)))))) ) ) # ( \RB[1]~input_o\ & ( (!\RB[2]~input_o\ & 
-- ((((\banc~1352_combout\))))) # (\RB[2]~input_o\ & ((!\banc~1352_combout\ & (((\banc~232_q\)))) # (\banc~1352_combout\ & (\banc~264_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001111001100000000111101110100000011111111110000001111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~264_q\,
	datab => \ALT_INV_RB[2]~input_o\,
	datac => \ALT_INV_banc~232_q\,
	datad => \ALT_INV_banc~1352_combout\,
	datae => \ALT_INV_RB[1]~input_o\,
	dataf => \ALT_INV_banc~200_q\,
	datag => \ALT_INV_banc~168_q\,
	combout => \banc~1198_combout\);

-- Location: LABCELL_X22_Y4_N30
\banc~1353\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1353_combout\ = ( \banc~105_q\ & ( \RB[1]~input_o\ & ( (!\RB[2]~input_o\ & ((!\RB[0]~input_o\) # (\banc~137_q\))) # (\RB[2]~input_o\ & ((\RB[0]~input_o\))) ) ) ) # ( !\banc~105_q\ & ( \RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\RB[2]~input_o\) # 
-- (\banc~137_q\))) ) ) ) # ( \banc~105_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\banc~73_q\) # (\RB[2]~input_o\))) ) ) ) # ( !\banc~105_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\banc~73_q\) # (\RB[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111100000000011101111100110001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~137_q\,
	datab => \ALT_INV_RB[2]~input_o\,
	datac => \ALT_INV_banc~73_q\,
	datad => \ALT_INV_RB[0]~input_o\,
	datae => \ALT_INV_banc~105_q\,
	dataf => \ALT_INV_RB[1]~input_o\,
	combout => \banc~1353_combout\);

-- Location: LABCELL_X27_Y4_N54
\banc~1202\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1202_combout\ = ( !\RB[1]~input_o\ & ( (!\RB[2]~input_o\ & ((((\banc~1353_combout\))))) # (\RB[2]~input_o\ & ((!\banc~1353_combout\ & (((\banc~169_q\)))) # (\banc~1353_combout\ & (\banc~201_q\)))) ) ) # ( \RB[1]~input_o\ & ( (!\RB[2]~input_o\ & 
-- ((((\banc~1353_combout\))))) # (\RB[2]~input_o\ & (((!\banc~1353_combout\ & (\banc~233_q\)) # (\banc~1353_combout\ & ((\banc~265_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010110111011000001011010101000000101101110110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RB[2]~input_o\,
	datab => \ALT_INV_banc~201_q\,
	datac => \ALT_INV_banc~233_q\,
	datad => \ALT_INV_banc~1353_combout\,
	datae => \ALT_INV_RB[1]~input_o\,
	dataf => \ALT_INV_banc~265_q\,
	datag => \ALT_INV_banc~169_q\,
	combout => \banc~1202_combout\);

-- Location: LABCELL_X22_Y4_N42
\banc~1354\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1354_combout\ = ( \banc~106_q\ & ( \RB[1]~input_o\ & ( (!\RB[2]~input_o\ & ((!\RB[0]~input_o\) # (\banc~138_q\))) # (\RB[2]~input_o\ & ((\RB[0]~input_o\))) ) ) ) # ( !\banc~106_q\ & ( \RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\banc~138_q\) # 
-- (\RB[2]~input_o\))) ) ) ) # ( \banc~106_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\RB[2]~input_o\) # (\banc~74_q\))) ) ) ) # ( !\banc~106_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\RB[2]~input_o\) # (\banc~74_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011100000000001111111100110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~74_q\,
	datab => \ALT_INV_RB[2]~input_o\,
	datac => \ALT_INV_banc~138_q\,
	datad => \ALT_INV_RB[0]~input_o\,
	datae => \ALT_INV_banc~106_q\,
	dataf => \ALT_INV_RB[1]~input_o\,
	combout => \banc~1354_combout\);

-- Location: MLABCELL_X21_Y4_N30
\banc~1206\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1206_combout\ = ( !\RB[1]~input_o\ & ( ((!\RB[2]~input_o\ & (((\banc~1354_combout\)))) # (\RB[2]~input_o\ & ((!\banc~1354_combout\ & ((\banc~170_q\))) # (\banc~1354_combout\ & (\banc~202_q\))))) ) ) # ( \RB[1]~input_o\ & ( ((!\RB[2]~input_o\ & 
-- (((\banc~1354_combout\)))) # (\RB[2]~input_o\ & ((!\banc~1354_combout\ & ((\banc~234_q\))) # (\banc~1354_combout\ & (\banc~266_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111001100111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~266_q\,
	datab => \ALT_INV_banc~202_q\,
	datac => \ALT_INV_banc~234_q\,
	datad => \ALT_INV_RB[2]~input_o\,
	datae => \ALT_INV_RB[1]~input_o\,
	dataf => \ALT_INV_banc~1354_combout\,
	datag => \ALT_INV_banc~170_q\,
	combout => \banc~1206_combout\);

-- Location: LABCELL_X23_Y4_N12
\banc~1355\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1355_combout\ = ( \banc~107_q\ & ( \RB[1]~input_o\ & ( (!\RB[0]~input_o\ & (!\RB[2]~input_o\)) # (\RB[0]~input_o\ & ((\banc~139_q\) # (\RB[2]~input_o\))) ) ) ) # ( !\banc~107_q\ & ( \RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\banc~139_q\) # 
-- (\RB[2]~input_o\))) ) ) ) # ( \banc~107_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\RB[2]~input_o\) # (\banc~75_q\))) ) ) ) # ( !\banc~107_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\RB[2]~input_o\) # (\banc~75_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100000101010101011010010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RB[0]~input_o\,
	datab => \ALT_INV_banc~75_q\,
	datac => \ALT_INV_RB[2]~input_o\,
	datad => \ALT_INV_banc~139_q\,
	datae => \ALT_INV_banc~107_q\,
	dataf => \ALT_INV_RB[1]~input_o\,
	combout => \banc~1355_combout\);

-- Location: MLABCELL_X21_Y4_N36
\banc~1210\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1210_combout\ = ( !\RB[1]~input_o\ & ( (!\RB[2]~input_o\ & ((((\banc~1355_combout\))))) # (\RB[2]~input_o\ & ((!\banc~1355_combout\ & (((\banc~171_q\)))) # (\banc~1355_combout\ & (\banc~203_q\)))) ) ) # ( \RB[1]~input_o\ & ( ((!\RB[2]~input_o\ & 
-- (((\banc~1355_combout\)))) # (\RB[2]~input_o\ & ((!\banc~1355_combout\ & (\banc~235_q\)) # (\banc~1355_combout\ & ((\banc~267_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001111011101000000111100110000000011110111010000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~203_q\,
	datab => \ALT_INV_RB[2]~input_o\,
	datac => \ALT_INV_banc~235_q\,
	datad => \ALT_INV_banc~1355_combout\,
	datae => \ALT_INV_RB[1]~input_o\,
	dataf => \ALT_INV_banc~267_q\,
	datag => \ALT_INV_banc~171_q\,
	combout => \banc~1210_combout\);

-- Location: LABCELL_X29_Y4_N42
\banc~1356\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1356_combout\ = ( \banc~108_q\ & ( \banc~76_q\ & ( (!\RB[1]~input_o\ & (((\RB[0]~input_o\)))) # (\RB[1]~input_o\ & ((!\RB[2]~input_o\ & ((!\RB[0]~input_o\) # (\banc~140_q\))) # (\RB[2]~input_o\ & (\RB[0]~input_o\)))) ) ) ) # ( !\banc~108_q\ & ( 
-- \banc~76_q\ & ( (\RB[0]~input_o\ & ((!\RB[1]~input_o\) # ((\banc~140_q\) # (\RB[2]~input_o\)))) ) ) ) # ( \banc~108_q\ & ( !\banc~76_q\ & ( (!\RB[2]~input_o\ & (\RB[1]~input_o\ & ((!\RB[0]~input_o\) # (\banc~140_q\)))) # (\RB[2]~input_o\ & 
-- (((\RB[0]~input_o\)))) ) ) ) # ( !\banc~108_q\ & ( !\banc~76_q\ & ( (\RB[0]~input_o\ & (((\RB[1]~input_o\ & \banc~140_q\)) # (\RB[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000111010000110100011100001011000011110100101101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RB[1]~input_o\,
	datab => \ALT_INV_RB[2]~input_o\,
	datac => \ALT_INV_RB[0]~input_o\,
	datad => \ALT_INV_banc~140_q\,
	datae => \ALT_INV_banc~108_q\,
	dataf => \ALT_INV_banc~76_q\,
	combout => \banc~1356_combout\);

-- Location: MLABCELL_X28_Y4_N6
\banc~1214\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1214_combout\ = ( !\RB[1]~input_o\ & ( ((!\RB[2]~input_o\ & (((\banc~1356_combout\)))) # (\RB[2]~input_o\ & ((!\banc~1356_combout\ & (\banc~172_q\)) # (\banc~1356_combout\ & ((\banc~204_q\)))))) ) ) # ( \RB[1]~input_o\ & ( (!\RB[2]~input_o\ & 
-- ((((\banc~1356_combout\))))) # (\RB[2]~input_o\ & (((!\banc~1356_combout\ & ((\banc~236_q\))) # (\banc~1356_combout\ & (\banc~268_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111001100111111111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~268_q\,
	datab => \ALT_INV_RB[2]~input_o\,
	datac => \ALT_INV_banc~236_q\,
	datad => \ALT_INV_banc~204_q\,
	datae => \ALT_INV_RB[1]~input_o\,
	dataf => \ALT_INV_banc~1356_combout\,
	datag => \ALT_INV_banc~172_q\,
	combout => \banc~1214_combout\);

-- Location: MLABCELL_X25_Y5_N42
\banc~1357\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1357_combout\ = ( \banc~109_q\ & ( \RB[1]~input_o\ & ( (!\RB[0]~input_o\ & ((!\RB[2]~input_o\))) # (\RB[0]~input_o\ & ((\RB[2]~input_o\) # (\banc~141_q\))) ) ) ) # ( !\banc~109_q\ & ( \RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\RB[2]~input_o\) # 
-- (\banc~141_q\))) ) ) ) # ( \banc~109_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\RB[2]~input_o\) # (\banc~77_q\))) ) ) ) # ( !\banc~109_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\RB[2]~input_o\) # (\banc~77_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100000101000011111111010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~141_q\,
	datab => \ALT_INV_banc~77_q\,
	datac => \ALT_INV_RB[0]~input_o\,
	datad => \ALT_INV_RB[2]~input_o\,
	datae => \ALT_INV_banc~109_q\,
	dataf => \ALT_INV_RB[1]~input_o\,
	combout => \banc~1357_combout\);

-- Location: MLABCELL_X28_Y4_N42
\banc~1218\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1218_combout\ = ( !\RB[1]~input_o\ & ( (!\banc~1357_combout\ & (((\banc~173_q\ & (\RB[2]~input_o\))))) # (\banc~1357_combout\ & ((((!\RB[2]~input_o\))) # (\banc~205_q\))) ) ) # ( \RB[1]~input_o\ & ( (!\banc~1357_combout\ & (((\banc~237_q\ & 
-- (\RB[2]~input_o\))))) # (\banc~1357_combout\ & ((((!\RB[2]~input_o\) # (\banc~269_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010100011011010101010000101001010101000110110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~1357_combout\,
	datab => \ALT_INV_banc~205_q\,
	datac => \ALT_INV_banc~237_q\,
	datad => \ALT_INV_RB[2]~input_o\,
	datae => \ALT_INV_RB[1]~input_o\,
	dataf => \ALT_INV_banc~269_q\,
	datag => \ALT_INV_banc~173_q\,
	combout => \banc~1218_combout\);

-- Location: LABCELL_X23_Y4_N54
\banc~1358\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1358_combout\ = ( \banc~110_q\ & ( \RB[1]~input_o\ & ( (!\RB[2]~input_o\ & ((!\RB[0]~input_o\) # (\banc~142_q\))) # (\RB[2]~input_o\ & ((\RB[0]~input_o\))) ) ) ) # ( !\banc~110_q\ & ( \RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\banc~142_q\) # 
-- (\RB[2]~input_o\))) ) ) ) # ( \banc~110_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\RB[2]~input_o\) # (\banc~78_q\))) ) ) ) # ( !\banc~110_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\RB[2]~input_o\) # (\banc~78_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011100000000001111111100110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~78_q\,
	datab => \ALT_INV_RB[2]~input_o\,
	datac => \ALT_INV_banc~142_q\,
	datad => \ALT_INV_RB[0]~input_o\,
	datae => \ALT_INV_banc~110_q\,
	dataf => \ALT_INV_RB[1]~input_o\,
	combout => \banc~1358_combout\);

-- Location: LABCELL_X27_Y4_N30
\banc~1222\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1222_combout\ = ( !\RB[1]~input_o\ & ( (!\RB[2]~input_o\ & ((((\banc~1358_combout\))))) # (\RB[2]~input_o\ & (((!\banc~1358_combout\ & ((\banc~174_q\))) # (\banc~1358_combout\ & (\banc~206_q\))))) ) ) # ( \RB[1]~input_o\ & ( (!\RB[2]~input_o\ & 
-- ((((\banc~1358_combout\))))) # (\RB[2]~input_o\ & (((!\banc~1358_combout\ & (\banc~238_q\)) # (\banc~1358_combout\ & ((\banc~270_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000001010000010110111011101110111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RB[2]~input_o\,
	datab => \ALT_INV_banc~206_q\,
	datac => \ALT_INV_banc~238_q\,
	datad => \ALT_INV_banc~270_q\,
	datae => \ALT_INV_RB[1]~input_o\,
	dataf => \ALT_INV_banc~1358_combout\,
	datag => \ALT_INV_banc~174_q\,
	combout => \banc~1222_combout\);

-- Location: LABCELL_X23_Y4_N6
\banc~1359\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1359_combout\ = ( \banc~111_q\ & ( \RB[1]~input_o\ & ( (!\RB[2]~input_o\ & ((!\RB[0]~input_o\) # (\banc~143_q\))) # (\RB[2]~input_o\ & ((\RB[0]~input_o\))) ) ) ) # ( !\banc~111_q\ & ( \RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\RB[2]~input_o\) # 
-- (\banc~143_q\))) ) ) ) # ( \banc~111_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\RB[2]~input_o\) # (\banc~79_q\))) ) ) ) # ( !\banc~111_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\RB[2]~input_o\) # (\banc~79_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111100000000010111111111000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~143_q\,
	datab => \ALT_INV_banc~79_q\,
	datac => \ALT_INV_RB[2]~input_o\,
	datad => \ALT_INV_RB[0]~input_o\,
	datae => \ALT_INV_banc~111_q\,
	dataf => \ALT_INV_RB[1]~input_o\,
	combout => \banc~1359_combout\);

-- Location: LABCELL_X27_Y4_N6
\banc~1226\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1226_combout\ = ( !\RB[1]~input_o\ & ( (!\RB[2]~input_o\ & ((((\banc~1359_combout\))))) # (\RB[2]~input_o\ & (((!\banc~1359_combout\ & ((\banc~175_q\))) # (\banc~1359_combout\ & (\banc~207_q\))))) ) ) # ( \RB[1]~input_o\ & ( (!\RB[2]~input_o\ & 
-- ((((\banc~1359_combout\))))) # (\RB[2]~input_o\ & (((!\banc~1359_combout\ & (\banc~239_q\)) # (\banc~1359_combout\ & ((\banc~271_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000001010000010110111011101110111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RB[2]~input_o\,
	datab => \ALT_INV_banc~207_q\,
	datac => \ALT_INV_banc~239_q\,
	datad => \ALT_INV_banc~271_q\,
	datae => \ALT_INV_RB[1]~input_o\,
	dataf => \ALT_INV_banc~1359_combout\,
	datag => \ALT_INV_banc~175_q\,
	combout => \banc~1226_combout\);

-- Location: LABCELL_X23_Y4_N48
\banc~1360\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1360_combout\ = ( \banc~112_q\ & ( \RB[1]~input_o\ & ( (!\RB[2]~input_o\ & ((!\RB[0]~input_o\) # (\banc~144_q\))) # (\RB[2]~input_o\ & ((\RB[0]~input_o\))) ) ) ) # ( !\banc~112_q\ & ( \RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\RB[2]~input_o\) # 
-- (\banc~144_q\))) ) ) ) # ( \banc~112_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\RB[2]~input_o\) # (\banc~80_q\))) ) ) ) # ( !\banc~112_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\RB[2]~input_o\) # (\banc~80_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100000000001111111111000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~80_q\,
	datab => \ALT_INV_banc~144_q\,
	datac => \ALT_INV_RB[2]~input_o\,
	datad => \ALT_INV_RB[0]~input_o\,
	datae => \ALT_INV_banc~112_q\,
	dataf => \ALT_INV_RB[1]~input_o\,
	combout => \banc~1360_combout\);

-- Location: MLABCELL_X21_Y4_N12
\banc~1230\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1230_combout\ = ( !\RB[1]~input_o\ & ( (!\RB[2]~input_o\ & ((((\banc~1360_combout\))))) # (\RB[2]~input_o\ & ((!\banc~1360_combout\ & (((\banc~176_q\)))) # (\banc~1360_combout\ & (\banc~208_q\)))) ) ) # ( \RB[1]~input_o\ & ( ((!\RB[2]~input_o\ & 
-- (((\banc~1360_combout\)))) # (\RB[2]~input_o\ & ((!\banc~1360_combout\ & (\banc~240_q\)) # (\banc~1360_combout\ & ((\banc~272_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001111011101000000111100110000000011110111010000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~208_q\,
	datab => \ALT_INV_RB[2]~input_o\,
	datac => \ALT_INV_banc~240_q\,
	datad => \ALT_INV_banc~1360_combout\,
	datae => \ALT_INV_RB[1]~input_o\,
	dataf => \ALT_INV_banc~272_q\,
	datag => \ALT_INV_banc~176_q\,
	combout => \banc~1230_combout\);

-- Location: MLABCELL_X25_Y5_N24
\banc~1361\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1361_combout\ = ( \banc~113_q\ & ( \RB[1]~input_o\ & ( (!\RB[2]~input_o\ & ((!\RB[0]~input_o\) # (\banc~145_q\))) # (\RB[2]~input_o\ & (\RB[0]~input_o\)) ) ) ) # ( !\banc~113_q\ & ( \RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\banc~145_q\) # 
-- (\RB[2]~input_o\))) ) ) ) # ( \banc~113_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\RB[2]~input_o\) # (\banc~81_q\))) ) ) ) # ( !\banc~113_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\RB[2]~input_o\) # (\banc~81_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100000011000011111100001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~81_q\,
	datab => \ALT_INV_RB[2]~input_o\,
	datac => \ALT_INV_RB[0]~input_o\,
	datad => \ALT_INV_banc~145_q\,
	datae => \ALT_INV_banc~113_q\,
	dataf => \ALT_INV_RB[1]~input_o\,
	combout => \banc~1361_combout\);

-- Location: MLABCELL_X25_Y4_N54
\banc~1234\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1234_combout\ = ( !\RB[1]~input_o\ & ( ((!\RB[2]~input_o\ & (((\banc~1361_combout\)))) # (\RB[2]~input_o\ & ((!\banc~1361_combout\ & ((\banc~177_q\))) # (\banc~1361_combout\ & (\banc~209_q\))))) ) ) # ( \RB[1]~input_o\ & ( ((!\RB[2]~input_o\ & 
-- (((\banc~1361_combout\)))) # (\RB[2]~input_o\ & ((!\banc~1361_combout\ & ((\banc~241_q\))) # (\banc~1361_combout\ & (\banc~273_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~209_q\,
	datab => \ALT_INV_banc~273_q\,
	datac => \ALT_INV_banc~241_q\,
	datad => \ALT_INV_RB[2]~input_o\,
	datae => \ALT_INV_RB[1]~input_o\,
	dataf => \ALT_INV_banc~1361_combout\,
	datag => \ALT_INV_banc~177_q\,
	combout => \banc~1234_combout\);

-- Location: MLABCELL_X25_Y5_N6
\banc~1362\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1362_combout\ = ( \banc~114_q\ & ( \RB[1]~input_o\ & ( (!\RB[0]~input_o\ & ((!\RB[2]~input_o\))) # (\RB[0]~input_o\ & ((\RB[2]~input_o\) # (\banc~146_q\))) ) ) ) # ( !\banc~114_q\ & ( \RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\RB[2]~input_o\) # 
-- (\banc~146_q\))) ) ) ) # ( \banc~114_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\RB[2]~input_o\) # (\banc~82_q\))) ) ) ) # ( !\banc~114_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\RB[2]~input_o\) # (\banc~82_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111100000011000011111111001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~82_q\,
	datab => \ALT_INV_banc~146_q\,
	datac => \ALT_INV_RB[0]~input_o\,
	datad => \ALT_INV_RB[2]~input_o\,
	datae => \ALT_INV_banc~114_q\,
	dataf => \ALT_INV_RB[1]~input_o\,
	combout => \banc~1362_combout\);

-- Location: MLABCELL_X25_Y4_N0
\banc~1238\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1238_combout\ = ( !\RB[1]~input_o\ & ( (!\banc~1362_combout\ & (((\banc~178_q\ & (\RB[2]~input_o\))))) # (\banc~1362_combout\ & ((((!\RB[2]~input_o\))) # (\banc~210_q\))) ) ) # ( \RB[1]~input_o\ & ( ((!\banc~1362_combout\ & (\banc~242_q\ & 
-- (\RB[2]~input_o\))) # (\banc~1362_combout\ & (((!\RB[2]~input_o\) # (\banc~274_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100011101001100110000110000110011000111010011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~210_q\,
	datab => \ALT_INV_banc~1362_combout\,
	datac => \ALT_INV_banc~242_q\,
	datad => \ALT_INV_RB[2]~input_o\,
	datae => \ALT_INV_RB[1]~input_o\,
	dataf => \ALT_INV_banc~274_q\,
	datag => \ALT_INV_banc~178_q\,
	combout => \banc~1238_combout\);

-- Location: LABCELL_X24_Y4_N6
\banc~1363\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1363_combout\ = ( \banc~115_q\ & ( \RB[1]~input_o\ & ( (!\RB[0]~input_o\ & (!\RB[2]~input_o\)) # (\RB[0]~input_o\ & ((\banc~147_q\) # (\RB[2]~input_o\))) ) ) ) # ( !\banc~115_q\ & ( \RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\banc~147_q\) # 
-- (\RB[2]~input_o\))) ) ) ) # ( \banc~115_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\banc~83_q\) # (\RB[2]~input_o\))) ) ) ) # ( !\banc~115_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\banc~83_q\) # (\RB[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101010101000100010101010100010101000101011001110110011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RB[0]~input_o\,
	datab => \ALT_INV_RB[2]~input_o\,
	datac => \ALT_INV_banc~147_q\,
	datad => \ALT_INV_banc~83_q\,
	datae => \ALT_INV_banc~115_q\,
	dataf => \ALT_INV_RB[1]~input_o\,
	combout => \banc~1363_combout\);

-- Location: MLABCELL_X25_Y4_N36
\banc~1242\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1242_combout\ = ( !\RB[1]~input_o\ & ( (!\banc~1363_combout\ & (((\banc~179_q\ & (\RB[2]~input_o\))))) # (\banc~1363_combout\ & ((((!\RB[2]~input_o\) # (\banc~211_q\))))) ) ) # ( \RB[1]~input_o\ & ( (!\banc~1363_combout\ & (((\banc~243_q\ & 
-- (\RB[2]~input_o\))))) # (\banc~1363_combout\ & ((((!\RB[2]~input_o\))) # (\banc~275_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010100001010010101010001101101010101010111110101010100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~1363_combout\,
	datab => \ALT_INV_banc~275_q\,
	datac => \ALT_INV_banc~243_q\,
	datad => \ALT_INV_RB[2]~input_o\,
	datae => \ALT_INV_RB[1]~input_o\,
	dataf => \ALT_INV_banc~211_q\,
	datag => \ALT_INV_banc~179_q\,
	combout => \banc~1242_combout\);

-- Location: LABCELL_X23_Y5_N15
\banc~1364\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1364_combout\ = ( \banc~116_q\ & ( \RB[1]~input_o\ & ( (!\RB[2]~input_o\ & ((!\RB[0]~input_o\) # (\banc~148_q\))) # (\RB[2]~input_o\ & ((\RB[0]~input_o\))) ) ) ) # ( !\banc~116_q\ & ( \RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\banc~148_q\) # 
-- (\RB[2]~input_o\))) ) ) ) # ( \banc~116_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\banc~84_q\) # (\RB[2]~input_o\))) ) ) ) # ( !\banc~116_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\banc~84_q\) # (\RB[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011100000000010111111010101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RB[2]~input_o\,
	datab => \ALT_INV_banc~84_q\,
	datac => \ALT_INV_banc~148_q\,
	datad => \ALT_INV_RB[0]~input_o\,
	datae => \ALT_INV_banc~116_q\,
	dataf => \ALT_INV_RB[1]~input_o\,
	combout => \banc~1364_combout\);

-- Location: MLABCELL_X21_Y5_N36
\banc~1246\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1246_combout\ = ( !\RB[1]~input_o\ & ( ((!\banc~1364_combout\ & (((\banc~180_q\ & \RB[2]~input_o\)))) # (\banc~1364_combout\ & (((!\RB[2]~input_o\)) # (\banc~212_q\)))) ) ) # ( \RB[1]~input_o\ & ( ((!\banc~1364_combout\ & (((\banc~244_q\ & 
-- \RB[2]~input_o\)))) # (\banc~1364_combout\ & (((!\RB[2]~input_o\)) # (\banc~276_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000000001111111100001111001100110000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~276_q\,
	datab => \ALT_INV_banc~212_q\,
	datac => \ALT_INV_banc~244_q\,
	datad => \ALT_INV_banc~1364_combout\,
	datae => \ALT_INV_RB[1]~input_o\,
	dataf => \ALT_INV_RB[2]~input_o\,
	datag => \ALT_INV_banc~180_q\,
	combout => \banc~1246_combout\);

-- Location: LABCELL_X24_Y4_N48
\banc~1365\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1365_combout\ = ( \banc~117_q\ & ( \banc~149_q\ & ( (!\RB[2]~input_o\ & (((\banc~85_q\ & \RB[0]~input_o\)) # (\RB[1]~input_o\))) # (\RB[2]~input_o\ & (((\RB[0]~input_o\)))) ) ) ) # ( !\banc~117_q\ & ( \banc~149_q\ & ( (\RB[0]~input_o\ & 
-- (((\RB[2]~input_o\) # (\banc~85_q\)) # (\RB[1]~input_o\))) ) ) ) # ( \banc~117_q\ & ( !\banc~149_q\ & ( (!\RB[1]~input_o\ & (\RB[0]~input_o\ & ((\RB[2]~input_o\) # (\banc~85_q\)))) # (\RB[1]~input_o\ & ((!\RB[0]~input_o\ $ (\RB[2]~input_o\)))) ) ) ) # ( 
-- !\banc~117_q\ & ( !\banc~149_q\ & ( (\RB[0]~input_o\ & (((!\RB[1]~input_o\ & \banc~85_q\)) # (\RB[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000001111010100100000111100000111000011110101011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RB[1]~input_o\,
	datab => \ALT_INV_banc~85_q\,
	datac => \ALT_INV_RB[0]~input_o\,
	datad => \ALT_INV_RB[2]~input_o\,
	datae => \ALT_INV_banc~117_q\,
	dataf => \ALT_INV_banc~149_q\,
	combout => \banc~1365_combout\);

-- Location: MLABCELL_X25_Y4_N42
\banc~1250\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1250_combout\ = ( !\RB[1]~input_o\ & ( (!\RB[2]~input_o\ & ((((\banc~1365_combout\))))) # (\RB[2]~input_o\ & (((!\banc~1365_combout\ & ((\banc~181_q\))) # (\banc~1365_combout\ & (\banc~213_q\))))) ) ) # ( \RB[1]~input_o\ & ( ((!\RB[2]~input_o\ & 
-- (((\banc~1365_combout\)))) # (\RB[2]~input_o\ & ((!\banc~1365_combout\ & (\banc~245_q\)) # (\banc~1365_combout\ & ((\banc~277_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000000110000001111011101110111011100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~213_q\,
	datab => \ALT_INV_RB[2]~input_o\,
	datac => \ALT_INV_banc~245_q\,
	datad => \ALT_INV_banc~277_q\,
	datae => \ALT_INV_RB[1]~input_o\,
	dataf => \ALT_INV_banc~1365_combout\,
	datag => \ALT_INV_banc~181_q\,
	combout => \banc~1250_combout\);

-- Location: LABCELL_X24_Y4_N30
\banc~1366\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1366_combout\ = ( \banc~118_q\ & ( \RB[1]~input_o\ & ( (!\RB[2]~input_o\ & ((!\RB[0]~input_o\) # (\banc~150_q\))) # (\RB[2]~input_o\ & ((\RB[0]~input_o\))) ) ) ) # ( !\banc~118_q\ & ( \RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\banc~150_q\) # 
-- (\RB[2]~input_o\))) ) ) ) # ( \banc~118_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\RB[2]~input_o\) # (\banc~86_q\))) ) ) ) # ( !\banc~118_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\RB[2]~input_o\) # (\banc~86_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011100000000001111111100110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~86_q\,
	datab => \ALT_INV_RB[2]~input_o\,
	datac => \ALT_INV_banc~150_q\,
	datad => \ALT_INV_RB[0]~input_o\,
	datae => \ALT_INV_banc~118_q\,
	dataf => \ALT_INV_RB[1]~input_o\,
	combout => \banc~1366_combout\);

-- Location: LABCELL_X24_Y6_N54
\banc~1254\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1254_combout\ = ( !\RB[1]~input_o\ & ( (!\banc~1366_combout\ & (((\banc~182_q\ & ((\RB[2]~input_o\)))))) # (\banc~1366_combout\ & ((((!\RB[2]~input_o\))) # (\banc~214_q\))) ) ) # ( \RB[1]~input_o\ & ( ((!\banc~1366_combout\ & (\banc~246_q\ & 
-- ((\RB[2]~input_o\)))) # (\banc~1366_combout\ & (((!\RB[2]~input_o\) # (\banc~278_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100110011001100110011001100011101000111010000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~214_q\,
	datab => \ALT_INV_banc~1366_combout\,
	datac => \ALT_INV_banc~246_q\,
	datad => \ALT_INV_banc~278_q\,
	datae => \ALT_INV_RB[1]~input_o\,
	dataf => \ALT_INV_RB[2]~input_o\,
	datag => \ALT_INV_banc~182_q\,
	combout => \banc~1254_combout\);

-- Location: MLABCELL_X25_Y5_N18
\banc~1367\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1367_combout\ = ( \banc~119_q\ & ( \RB[1]~input_o\ & ( (!\RB[0]~input_o\ & (!\RB[2]~input_o\)) # (\RB[0]~input_o\ & ((\banc~151_q\) # (\RB[2]~input_o\))) ) ) ) # ( !\banc~119_q\ & ( \RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\banc~151_q\) # 
-- (\RB[2]~input_o\))) ) ) ) # ( \banc~119_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\RB[2]~input_o\) # (\banc~87_q\))) ) ) ) # ( !\banc~119_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\RB[2]~input_o\) # (\banc~87_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100000101010101011010010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RB[0]~input_o\,
	datab => \ALT_INV_banc~87_q\,
	datac => \ALT_INV_RB[2]~input_o\,
	datad => \ALT_INV_banc~151_q\,
	datae => \ALT_INV_banc~119_q\,
	dataf => \ALT_INV_RB[1]~input_o\,
	combout => \banc~1367_combout\);

-- Location: MLABCELL_X25_Y5_N0
\banc~1258\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1258_combout\ = ( !\RB[1]~input_o\ & ( (!\RB[2]~input_o\ & ((((\banc~1367_combout\))))) # (\RB[2]~input_o\ & (((!\banc~1367_combout\ & (\banc~183_q\)) # (\banc~1367_combout\ & ((\banc~215_q\)))))) ) ) # ( \RB[1]~input_o\ & ( (!\RB[2]~input_o\ & 
-- ((((\banc~1367_combout\))))) # (\RB[2]~input_o\ & (((!\banc~1367_combout\ & ((\banc~247_q\))) # (\banc~1367_combout\ & (\banc~279_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000001010000010110101010111111111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RB[2]~input_o\,
	datab => \ALT_INV_banc~279_q\,
	datac => \ALT_INV_banc~247_q\,
	datad => \ALT_INV_banc~215_q\,
	datae => \ALT_INV_RB[1]~input_o\,
	dataf => \ALT_INV_banc~1367_combout\,
	datag => \ALT_INV_banc~183_q\,
	combout => \banc~1258_combout\);

-- Location: LABCELL_X22_Y6_N36
\banc~1368\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1368_combout\ = ( \banc~120_q\ & ( \RB[0]~input_o\ & ( ((!\RB[1]~input_o\ & ((\banc~88_q\))) # (\RB[1]~input_o\ & (\banc~152_q\))) # (\RB[2]~input_o\) ) ) ) # ( !\banc~120_q\ & ( \RB[0]~input_o\ & ( ((!\RB[1]~input_o\ & ((\banc~88_q\))) # 
-- (\RB[1]~input_o\ & (\banc~152_q\))) # (\RB[2]~input_o\) ) ) ) # ( \banc~120_q\ & ( !\RB[0]~input_o\ & ( (!\RB[2]~input_o\ & \RB[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101001011111011101110101111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RB[2]~input_o\,
	datab => \ALT_INV_banc~152_q\,
	datac => \ALT_INV_banc~88_q\,
	datad => \ALT_INV_RB[1]~input_o\,
	datae => \ALT_INV_banc~120_q\,
	dataf => \ALT_INV_RB[0]~input_o\,
	combout => \banc~1368_combout\);

-- Location: MLABCELL_X21_Y6_N54
\banc~1262\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1262_combout\ = ( !\RB[1]~input_o\ & ( ((!\banc~1368_combout\ & (((\banc~184_q\ & \RB[2]~input_o\)))) # (\banc~1368_combout\ & (((!\RB[2]~input_o\)) # (\banc~216_q\)))) ) ) # ( \RB[1]~input_o\ & ( ((!\banc~1368_combout\ & (((\banc~248_q\ & 
-- \RB[2]~input_o\)))) # (\banc~1368_combout\ & (((!\RB[2]~input_o\)) # (\banc~280_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000000001111111100001111010101010000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~216_q\,
	datab => \ALT_INV_banc~280_q\,
	datac => \ALT_INV_banc~248_q\,
	datad => \ALT_INV_banc~1368_combout\,
	datae => \ALT_INV_RB[1]~input_o\,
	dataf => \ALT_INV_RB[2]~input_o\,
	datag => \ALT_INV_banc~184_q\,
	combout => \banc~1262_combout\);

-- Location: LABCELL_X22_Y6_N54
\banc~1369\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1369_combout\ = ( \banc~121_q\ & ( \RB[0]~input_o\ & ( ((!\RB[1]~input_o\ & (\banc~89_q\)) # (\RB[1]~input_o\ & ((\banc~153_q\)))) # (\RB[2]~input_o\) ) ) ) # ( !\banc~121_q\ & ( \RB[0]~input_o\ & ( ((!\RB[1]~input_o\ & (\banc~89_q\)) # 
-- (\RB[1]~input_o\ & ((\banc~153_q\)))) # (\RB[2]~input_o\) ) ) ) # ( \banc~121_q\ & ( !\RB[0]~input_o\ & ( (!\RB[2]~input_o\ & \RB[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101001110111010111110111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RB[2]~input_o\,
	datab => \ALT_INV_banc~89_q\,
	datac => \ALT_INV_banc~153_q\,
	datad => \ALT_INV_RB[1]~input_o\,
	datae => \ALT_INV_banc~121_q\,
	dataf => \ALT_INV_RB[0]~input_o\,
	combout => \banc~1369_combout\);

-- Location: MLABCELL_X21_Y6_N30
\banc~1266\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1266_combout\ = ( !\RB[1]~input_o\ & ( ((!\banc~1369_combout\ & (((\banc~185_q\ & \RB[2]~input_o\)))) # (\banc~1369_combout\ & (((!\RB[2]~input_o\)) # (\banc~217_q\)))) ) ) # ( \RB[1]~input_o\ & ( ((!\banc~1369_combout\ & (((\banc~249_q\ & 
-- \RB[2]~input_o\)))) # (\banc~1369_combout\ & (((!\RB[2]~input_o\)) # (\banc~281_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000000001111111100001111001100110000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~281_q\,
	datab => \ALT_INV_banc~217_q\,
	datac => \ALT_INV_banc~249_q\,
	datad => \ALT_INV_banc~1369_combout\,
	datae => \ALT_INV_RB[1]~input_o\,
	dataf => \ALT_INV_RB[2]~input_o\,
	datag => \ALT_INV_banc~185_q\,
	combout => \banc~1266_combout\);

-- Location: LABCELL_X24_Y6_N24
\banc~1370\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1370_combout\ = ( \banc~122_q\ & ( \RB[2]~input_o\ & ( \RB[0]~input_o\ ) ) ) # ( !\banc~122_q\ & ( \RB[2]~input_o\ & ( \RB[0]~input_o\ ) ) ) # ( \banc~122_q\ & ( !\RB[2]~input_o\ & ( (!\RB[0]~input_o\ & (((\RB[1]~input_o\)))) # (\RB[0]~input_o\ & 
-- ((!\RB[1]~input_o\ & ((\banc~90_q\))) # (\RB[1]~input_o\ & (\banc~154_q\)))) ) ) ) # ( !\banc~122_q\ & ( !\RB[2]~input_o\ & ( (\RB[0]~input_o\ & ((!\RB[1]~input_o\ & ((\banc~90_q\))) # (\RB[1]~input_o\ & (\banc~154_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001000000111101110100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~154_q\,
	datab => \ALT_INV_RB[0]~input_o\,
	datac => \ALT_INV_banc~90_q\,
	datad => \ALT_INV_RB[1]~input_o\,
	datae => \ALT_INV_banc~122_q\,
	dataf => \ALT_INV_RB[2]~input_o\,
	combout => \banc~1370_combout\);

-- Location: LABCELL_X24_Y6_N0
\banc~1270\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1270_combout\ = ( !\RB[1]~input_o\ & ( ((!\banc~1370_combout\ & (((\banc~186_q\ & \RB[2]~input_o\)))) # (\banc~1370_combout\ & (((!\RB[2]~input_o\)) # (\banc~218_q\)))) ) ) # ( \RB[1]~input_o\ & ( ((!\banc~1370_combout\ & (((\banc~250_q\ & 
-- \RB[2]~input_o\)))) # (\banc~1370_combout\ & (((!\RB[2]~input_o\)) # (\banc~282_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000000001111111100001111001100110000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~282_q\,
	datab => \ALT_INV_banc~218_q\,
	datac => \ALT_INV_banc~250_q\,
	datad => \ALT_INV_banc~1370_combout\,
	datae => \ALT_INV_RB[1]~input_o\,
	dataf => \ALT_INV_RB[2]~input_o\,
	datag => \ALT_INV_banc~186_q\,
	combout => \banc~1270_combout\);

-- Location: LABCELL_X27_Y6_N30
\banc~1371\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1371_combout\ = ( \banc~123_q\ & ( \RB[2]~input_o\ & ( \RB[0]~input_o\ ) ) ) # ( !\banc~123_q\ & ( \RB[2]~input_o\ & ( \RB[0]~input_o\ ) ) ) # ( \banc~123_q\ & ( !\RB[2]~input_o\ & ( (!\RB[0]~input_o\ & (((\RB[1]~input_o\)))) # (\RB[0]~input_o\ & 
-- ((!\RB[1]~input_o\ & ((\banc~91_q\))) # (\RB[1]~input_o\ & (\banc~155_q\)))) ) ) ) # ( !\banc~123_q\ & ( !\RB[2]~input_o\ & ( (\RB[0]~input_o\ & ((!\RB[1]~input_o\ & ((\banc~91_q\))) # (\RB[1]~input_o\ & (\banc~155_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001000010110101101101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RB[0]~input_o\,
	datab => \ALT_INV_banc~155_q\,
	datac => \ALT_INV_RB[1]~input_o\,
	datad => \ALT_INV_banc~91_q\,
	datae => \ALT_INV_banc~123_q\,
	dataf => \ALT_INV_RB[2]~input_o\,
	combout => \banc~1371_combout\);

-- Location: LABCELL_X27_Y6_N12
\banc~1274\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1274_combout\ = ( !\RB[1]~input_o\ & ( ((!\banc~1371_combout\ & (((\banc~187_q\ & \RB[2]~input_o\)))) # (\banc~1371_combout\ & (((!\RB[2]~input_o\)) # (\banc~219_q\)))) ) ) # ( \RB[1]~input_o\ & ( ((!\banc~1371_combout\ & (((\banc~251_q\ & 
-- \RB[2]~input_o\)))) # (\banc~1371_combout\ & (((!\RB[2]~input_o\)) # (\banc~283_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000000001111111100001111001100110000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~283_q\,
	datab => \ALT_INV_banc~219_q\,
	datac => \ALT_INV_banc~251_q\,
	datad => \ALT_INV_banc~1371_combout\,
	datae => \ALT_INV_RB[1]~input_o\,
	dataf => \ALT_INV_RB[2]~input_o\,
	datag => \ALT_INV_banc~187_q\,
	combout => \banc~1274_combout\);

-- Location: LABCELL_X23_Y4_N24
\banc~1372\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1372_combout\ = ( \banc~124_q\ & ( \RB[1]~input_o\ & ( (!\RB[0]~input_o\ & ((!\RB[2]~input_o\))) # (\RB[0]~input_o\ & ((\RB[2]~input_o\) # (\banc~156_q\))) ) ) ) # ( !\banc~124_q\ & ( \RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\RB[2]~input_o\) # 
-- (\banc~156_q\))) ) ) ) # ( \banc~124_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\banc~92_q\) # (\RB[2]~input_o\))) ) ) ) # ( !\banc~124_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\banc~92_q\) # (\RB[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010100010101000101011011010110110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RB[0]~input_o\,
	datab => \ALT_INV_banc~156_q\,
	datac => \ALT_INV_RB[2]~input_o\,
	datad => \ALT_INV_banc~92_q\,
	datae => \ALT_INV_banc~124_q\,
	dataf => \ALT_INV_RB[1]~input_o\,
	combout => \banc~1372_combout\);

-- Location: LABCELL_X24_Y5_N42
\banc~1278\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1278_combout\ = ( !\RB[1]~input_o\ & ( (!\banc~1372_combout\ & (((\banc~188_q\ & ((\RB[2]~input_o\)))))) # (\banc~1372_combout\ & ((((!\RB[2]~input_o\))) # (\banc~220_q\))) ) ) # ( \RB[1]~input_o\ & ( ((!\banc~1372_combout\ & (\banc~252_q\ & 
-- ((\RB[2]~input_o\)))) # (\banc~1372_combout\ & (((!\RB[2]~input_o\) # (\banc~284_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100110011001100110011001100011101000111010000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~220_q\,
	datab => \ALT_INV_banc~1372_combout\,
	datac => \ALT_INV_banc~252_q\,
	datad => \ALT_INV_banc~284_q\,
	datae => \ALT_INV_RB[1]~input_o\,
	dataf => \ALT_INV_RB[2]~input_o\,
	datag => \ALT_INV_banc~188_q\,
	combout => \banc~1278_combout\);

-- Location: LABCELL_X22_Y6_N6
\banc~1373\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1373_combout\ = ( \banc~125_q\ & ( \RB[2]~input_o\ & ( \RB[0]~input_o\ ) ) ) # ( !\banc~125_q\ & ( \RB[2]~input_o\ & ( \RB[0]~input_o\ ) ) ) # ( \banc~125_q\ & ( !\RB[2]~input_o\ & ( (!\RB[0]~input_o\ & (((\RB[1]~input_o\)))) # (\RB[0]~input_o\ & 
-- ((!\RB[1]~input_o\ & (\banc~93_q\)) # (\RB[1]~input_o\ & ((\banc~157_q\))))) ) ) ) # ( !\banc~125_q\ & ( !\RB[2]~input_o\ & ( (\RB[0]~input_o\ & ((!\RB[1]~input_o\ & (\banc~93_q\)) # (\RB[1]~input_o\ & ((\banc~157_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011000100011100111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~93_q\,
	datab => \ALT_INV_RB[0]~input_o\,
	datac => \ALT_INV_banc~157_q\,
	datad => \ALT_INV_RB[1]~input_o\,
	datae => \ALT_INV_banc~125_q\,
	dataf => \ALT_INV_RB[2]~input_o\,
	combout => \banc~1373_combout\);

-- Location: MLABCELL_X21_Y6_N36
\banc~1282\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1282_combout\ = ( !\RB[1]~input_o\ & ( (!\banc~1373_combout\ & (((\banc~189_q\ & ((\RB[2]~input_o\)))))) # (\banc~1373_combout\ & ((((!\RB[2]~input_o\) # (\banc~221_q\))))) ) ) # ( \RB[1]~input_o\ & ( (!\banc~1373_combout\ & (((\banc~253_q\ & 
-- ((\RB[2]~input_o\)))))) # (\banc~1373_combout\ & ((((!\RB[2]~input_o\))) # (\banc~285_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010101010101010101010101010100001010010111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~1373_combout\,
	datab => \ALT_INV_banc~285_q\,
	datac => \ALT_INV_banc~253_q\,
	datad => \ALT_INV_banc~221_q\,
	datae => \ALT_INV_RB[1]~input_o\,
	dataf => \ALT_INV_RB[2]~input_o\,
	datag => \ALT_INV_banc~189_q\,
	combout => \banc~1282_combout\);

-- Location: LABCELL_X29_Y4_N24
\banc~1374\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1374_combout\ = ( \banc~126_q\ & ( \RB[1]~input_o\ & ( (!\RB[2]~input_o\ & ((!\RB[0]~input_o\) # (\banc~158_q\))) # (\RB[2]~input_o\ & ((\RB[0]~input_o\))) ) ) ) # ( !\banc~126_q\ & ( \RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\RB[2]~input_o\) # 
-- (\banc~158_q\))) ) ) ) # ( \banc~126_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\banc~94_q\) # (\RB[2]~input_o\))) ) ) ) # ( !\banc~126_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\banc~94_q\) # (\RB[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100000111000001111100011111000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~158_q\,
	datab => \ALT_INV_RB[2]~input_o\,
	datac => \ALT_INV_RB[0]~input_o\,
	datad => \ALT_INV_banc~94_q\,
	datae => \ALT_INV_banc~126_q\,
	dataf => \ALT_INV_RB[1]~input_o\,
	combout => \banc~1374_combout\);

-- Location: LABCELL_X27_Y6_N18
\banc~1286\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1286_combout\ = ( !\RB[1]~input_o\ & ( ((!\RB[2]~input_o\ & (((\banc~1374_combout\)))) # (\RB[2]~input_o\ & ((!\banc~1374_combout\ & ((\banc~190_q\))) # (\banc~1374_combout\ & (\banc~222_q\))))) ) ) # ( \RB[1]~input_o\ & ( ((!\RB[2]~input_o\ & 
-- (((\banc~1374_combout\)))) # (\RB[2]~input_o\ & ((!\banc~1374_combout\ & ((\banc~254_q\))) # (\banc~1374_combout\ & (\banc~286_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~222_q\,
	datab => \ALT_INV_banc~286_q\,
	datac => \ALT_INV_banc~254_q\,
	datad => \ALT_INV_RB[2]~input_o\,
	datae => \ALT_INV_RB[1]~input_o\,
	dataf => \ALT_INV_banc~1374_combout\,
	datag => \ALT_INV_banc~190_q\,
	combout => \banc~1286_combout\);

-- Location: LABCELL_X22_Y6_N24
\banc~1375\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1375_combout\ = ( \banc~127_q\ & ( \RB[0]~input_o\ & ( ((!\RB[1]~input_o\ & (\banc~95_q\)) # (\RB[1]~input_o\ & ((\banc~159_q\)))) # (\RB[2]~input_o\) ) ) ) # ( !\banc~127_q\ & ( \RB[0]~input_o\ & ( ((!\RB[1]~input_o\ & (\banc~95_q\)) # 
-- (\RB[1]~input_o\ & ((\banc~159_q\)))) # (\RB[2]~input_o\) ) ) ) # ( \banc~127_q\ & ( !\RB[0]~input_o\ & ( (!\RB[2]~input_o\ & \RB[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101001110111010111110111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RB[2]~input_o\,
	datab => \ALT_INV_banc~95_q\,
	datac => \ALT_INV_banc~159_q\,
	datad => \ALT_INV_RB[1]~input_o\,
	datae => \ALT_INV_banc~127_q\,
	dataf => \ALT_INV_RB[0]~input_o\,
	combout => \banc~1375_combout\);

-- Location: MLABCELL_X21_Y6_N42
\banc~1290\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1290_combout\ = ( !\RB[1]~input_o\ & ( (!\banc~1375_combout\ & (((\banc~191_q\ & ((\RB[2]~input_o\)))))) # (\banc~1375_combout\ & ((((!\RB[2]~input_o\))) # (\banc~223_q\))) ) ) # ( \RB[1]~input_o\ & ( ((!\banc~1375_combout\ & (\banc~255_q\ & 
-- ((\RB[2]~input_o\)))) # (\banc~1375_combout\ & (((!\RB[2]~input_o\) # (\banc~287_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100110011001100110011001100011101000111010000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~223_q\,
	datab => \ALT_INV_banc~1375_combout\,
	datac => \ALT_INV_banc~255_q\,
	datad => \ALT_INV_banc~287_q\,
	datae => \ALT_INV_RB[1]~input_o\,
	dataf => \ALT_INV_RB[2]~input_o\,
	datag => \ALT_INV_banc~191_q\,
	combout => \banc~1290_combout\);

-- Location: LABCELL_X23_Y6_N24
\banc~1376\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1376_combout\ = ( \banc~128_q\ & ( \RB[1]~input_o\ & ( (!\RB[2]~input_o\ & ((!\RB[0]~input_o\) # (\banc~160_q\))) # (\RB[2]~input_o\ & ((\RB[0]~input_o\))) ) ) ) # ( !\banc~128_q\ & ( \RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\banc~160_q\) # 
-- (\RB[2]~input_o\))) ) ) ) # ( \banc~128_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\banc~96_q\) # (\RB[2]~input_o\))) ) ) ) # ( !\banc~128_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\banc~96_q\) # (\RB[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011100000000010111111010101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RB[2]~input_o\,
	datab => \ALT_INV_banc~96_q\,
	datac => \ALT_INV_banc~160_q\,
	datad => \ALT_INV_RB[0]~input_o\,
	datae => \ALT_INV_banc~128_q\,
	dataf => \ALT_INV_RB[1]~input_o\,
	combout => \banc~1376_combout\);

-- Location: LABCELL_X24_Y6_N36
\banc~1294\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1294_combout\ = ( !\RB[1]~input_o\ & ( (!\banc~1376_combout\ & (((\banc~192_q\ & ((\RB[2]~input_o\)))))) # (\banc~1376_combout\ & ((((!\RB[2]~input_o\))) # (\banc~224_q\))) ) ) # ( \RB[1]~input_o\ & ( ((!\banc~1376_combout\ & (\banc~256_q\ & 
-- ((\RB[2]~input_o\)))) # (\banc~1376_combout\ & (((!\RB[2]~input_o\) # (\banc~288_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100110011001100110011001100011101000111010000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~224_q\,
	datab => \ALT_INV_banc~1376_combout\,
	datac => \ALT_INV_banc~256_q\,
	datad => \ALT_INV_banc~288_q\,
	datae => \ALT_INV_RB[1]~input_o\,
	dataf => \ALT_INV_RB[2]~input_o\,
	datag => \ALT_INV_banc~192_q\,
	combout => \banc~1294_combout\);

-- Location: LABCELL_X22_Y4_N54
\banc~1377\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1377_combout\ = ( \banc~129_q\ & ( \RB[1]~input_o\ & ( (!\RB[2]~input_o\ & ((!\RB[0]~input_o\) # (\banc~161_q\))) # (\RB[2]~input_o\ & (\RB[0]~input_o\)) ) ) ) # ( !\banc~129_q\ & ( \RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\banc~161_q\) # 
-- (\RB[2]~input_o\))) ) ) ) # ( \banc~129_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\banc~97_q\) # (\RB[2]~input_o\))) ) ) ) # ( !\banc~129_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\banc~97_q\) # (\RB[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001100010001001100111001100110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RB[2]~input_o\,
	datab => \ALT_INV_RB[0]~input_o\,
	datac => \ALT_INV_banc~97_q\,
	datad => \ALT_INV_banc~161_q\,
	datae => \ALT_INV_banc~129_q\,
	dataf => \ALT_INV_RB[1]~input_o\,
	combout => \banc~1377_combout\);

-- Location: LABCELL_X24_Y6_N42
\banc~1298\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1298_combout\ = ( !\RB[1]~input_o\ & ( (!\banc~1377_combout\ & (((\banc~193_q\ & ((\RB[2]~input_o\)))))) # (\banc~1377_combout\ & ((((!\RB[2]~input_o\))) # (\banc~225_q\))) ) ) # ( \RB[1]~input_o\ & ( ((!\banc~1377_combout\ & (\banc~257_q\ & 
-- ((\RB[2]~input_o\)))) # (\banc~1377_combout\ & (((!\RB[2]~input_o\) # (\banc~289_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100110011001100110011001100011101000111010000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~225_q\,
	datab => \ALT_INV_banc~1377_combout\,
	datac => \ALT_INV_banc~257_q\,
	datad => \ALT_INV_banc~289_q\,
	datae => \ALT_INV_RB[1]~input_o\,
	dataf => \ALT_INV_RB[2]~input_o\,
	datag => \ALT_INV_banc~193_q\,
	combout => \banc~1298_combout\);

-- Location: LABCELL_X23_Y3_N18
\banc~1378\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1378_combout\ = ( \banc~130_q\ & ( \banc~162_q\ & ( (!\RB[2]~input_o\ & (((\banc~98_q\ & \RB[0]~input_o\)) # (\RB[1]~input_o\))) # (\RB[2]~input_o\ & (((\RB[0]~input_o\)))) ) ) ) # ( !\banc~130_q\ & ( \banc~162_q\ & ( (\RB[0]~input_o\ & 
-- (((\banc~98_q\) # (\RB[1]~input_o\)) # (\RB[2]~input_o\))) ) ) ) # ( \banc~130_q\ & ( !\banc~162_q\ & ( (!\RB[2]~input_o\ & ((!\RB[1]~input_o\ & (\banc~98_q\ & \RB[0]~input_o\)) # (\RB[1]~input_o\ & ((!\RB[0]~input_o\))))) # (\RB[2]~input_o\ & 
-- (((\RB[0]~input_o\)))) ) ) ) # ( !\banc~130_q\ & ( !\banc~162_q\ & ( (\RB[0]~input_o\ & (((!\RB[1]~input_o\ & \banc~98_q\)) # (\RB[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011101001000100101110100000000011111110010001001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RB[2]~input_o\,
	datab => \ALT_INV_RB[1]~input_o\,
	datac => \ALT_INV_banc~98_q\,
	datad => \ALT_INV_RB[0]~input_o\,
	datae => \ALT_INV_banc~130_q\,
	dataf => \ALT_INV_banc~162_q\,
	combout => \banc~1378_combout\);

-- Location: LABCELL_X24_Y5_N48
\banc~1302\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1302_combout\ = ( !\RB[1]~input_o\ & ( (!\banc~1378_combout\ & (((\banc~194_q\ & (\RB[2]~input_o\))))) # (\banc~1378_combout\ & ((((!\RB[2]~input_o\) # (\banc~226_q\))))) ) ) # ( \RB[1]~input_o\ & ( (!\banc~1378_combout\ & (((\banc~258_q\ & 
-- (\RB[2]~input_o\))))) # (\banc~1378_combout\ & ((((!\RB[2]~input_o\))) # (\banc~290_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010100001010010101010001101101010101010111110101010100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~1378_combout\,
	datab => \ALT_INV_banc~290_q\,
	datac => \ALT_INV_banc~258_q\,
	datad => \ALT_INV_RB[2]~input_o\,
	datae => \ALT_INV_RB[1]~input_o\,
	dataf => \ALT_INV_banc~226_q\,
	datag => \ALT_INV_banc~194_q\,
	combout => \banc~1302_combout\);

-- Location: LABCELL_X27_Y5_N51
\banc~1379\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1379_combout\ = ( \banc~131_q\ & ( \banc~163_q\ & ( (!\RB[2]~input_o\ & (((\banc~99_q\ & \RB[0]~input_o\)) # (\RB[1]~input_o\))) # (\RB[2]~input_o\ & (((\RB[0]~input_o\)))) ) ) ) # ( !\banc~131_q\ & ( \banc~163_q\ & ( (\RB[0]~input_o\ & 
-- (((\RB[1]~input_o\) # (\banc~99_q\)) # (\RB[2]~input_o\))) ) ) ) # ( \banc~131_q\ & ( !\banc~163_q\ & ( (!\RB[2]~input_o\ & ((!\RB[1]~input_o\ & (\banc~99_q\ & \RB[0]~input_o\)) # (\RB[1]~input_o\ & ((!\RB[0]~input_o\))))) # (\RB[2]~input_o\ & 
-- (((\RB[0]~input_o\)))) ) ) ) # ( !\banc~131_q\ & ( !\banc~163_q\ & ( (\RB[0]~input_o\ & (((\banc~99_q\ & !\RB[1]~input_o\)) # (\RB[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110101000010100111010100000000011111110000101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RB[2]~input_o\,
	datab => \ALT_INV_banc~99_q\,
	datac => \ALT_INV_RB[1]~input_o\,
	datad => \ALT_INV_RB[0]~input_o\,
	datae => \ALT_INV_banc~131_q\,
	dataf => \ALT_INV_banc~163_q\,
	combout => \banc~1379_combout\);

-- Location: LABCELL_X27_Y6_N54
\banc~1306\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1306_combout\ = ( !\RB[1]~input_o\ & ( ((!\RB[2]~input_o\ & (((\banc~1379_combout\)))) # (\RB[2]~input_o\ & ((!\banc~1379_combout\ & ((\banc~195_q\))) # (\banc~1379_combout\ & (\banc~227_q\))))) ) ) # ( \RB[1]~input_o\ & ( ((!\RB[2]~input_o\ & 
-- (((\banc~1379_combout\)))) # (\RB[2]~input_o\ & ((!\banc~1379_combout\ & ((\banc~259_q\))) # (\banc~1379_combout\ & (\banc~291_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000000000111111111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~227_q\,
	datab => \ALT_INV_banc~291_q\,
	datac => \ALT_INV_banc~259_q\,
	datad => \ALT_INV_RB[2]~input_o\,
	datae => \ALT_INV_RB[1]~input_o\,
	dataf => \ALT_INV_banc~1379_combout\,
	datag => \ALT_INV_banc~195_q\,
	combout => \banc~1306_combout\);

-- Location: LABCELL_X23_Y6_N42
\banc~1380\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1380_combout\ = ( \banc~132_q\ & ( \RB[1]~input_o\ & ( (!\RB[0]~input_o\ & (!\RB[2]~input_o\)) # (\RB[0]~input_o\ & ((\banc~164_q\) # (\RB[2]~input_o\))) ) ) ) # ( !\banc~132_q\ & ( \RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\banc~164_q\) # 
-- (\RB[2]~input_o\))) ) ) ) # ( \banc~132_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\RB[2]~input_o\) # (\banc~100_q\))) ) ) ) # ( !\banc~132_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\RB[2]~input_o\) # (\banc~100_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001100000011001100111100001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~100_q\,
	datab => \ALT_INV_RB[0]~input_o\,
	datac => \ALT_INV_RB[2]~input_o\,
	datad => \ALT_INV_banc~164_q\,
	datae => \ALT_INV_banc~132_q\,
	dataf => \ALT_INV_RB[1]~input_o\,
	combout => \banc~1380_combout\);

-- Location: LABCELL_X24_Y6_N48
\banc~1310\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1310_combout\ = ( !\RB[1]~input_o\ & ( (!\banc~1380_combout\ & (((\banc~196_q\ & ((\RB[2]~input_o\)))))) # (\banc~1380_combout\ & ((((!\RB[2]~input_o\))) # (\banc~228_q\))) ) ) # ( \RB[1]~input_o\ & ( ((!\banc~1380_combout\ & (\banc~260_q\ & 
-- ((\RB[2]~input_o\)))) # (\banc~1380_combout\ & (((!\RB[2]~input_o\) # (\banc~292_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100110011001100110011001100011101000111010000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_banc~228_q\,
	datab => \ALT_INV_banc~1380_combout\,
	datac => \ALT_INV_banc~260_q\,
	datad => \ALT_INV_banc~292_q\,
	datae => \ALT_INV_RB[1]~input_o\,
	dataf => \ALT_INV_RB[2]~input_o\,
	datag => \ALT_INV_banc~196_q\,
	combout => \banc~1310_combout\);

-- Location: LABCELL_X24_Y4_N24
\banc~1381\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1381_combout\ = ( \banc~133_q\ & ( \RB[1]~input_o\ & ( (!\RB[0]~input_o\ & ((!\RB[2]~input_o\))) # (\RB[0]~input_o\ & ((\RB[2]~input_o\) # (\banc~165_q\))) ) ) ) # ( !\banc~133_q\ & ( \RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\RB[2]~input_o\) # 
-- (\banc~165_q\))) ) ) ) # ( \banc~133_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\RB[2]~input_o\) # (\banc~101_q\))) ) ) ) # ( !\banc~133_q\ & ( !\RB[1]~input_o\ & ( (\RB[0]~input_o\ & ((\RB[2]~input_o\) # (\banc~101_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101010101000100010101010100000101010101011010111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RB[0]~input_o\,
	datab => \ALT_INV_banc~101_q\,
	datac => \ALT_INV_banc~165_q\,
	datad => \ALT_INV_RB[2]~input_o\,
	datae => \ALT_INV_banc~133_q\,
	dataf => \ALT_INV_RB[1]~input_o\,
	combout => \banc~1381_combout\);

-- Location: LABCELL_X27_Y4_N42
\banc~1314\ : cyclonev_lcell_comb
-- Equation(s):
-- \banc~1314_combout\ = ( !\RB[1]~input_o\ & ( (!\RB[2]~input_o\ & (\banc~1381_combout\)) # (\RB[2]~input_o\ & ((!\banc~1381_combout\ & (\banc~197_q\)) # (\banc~1381_combout\ & (((\banc~229_q\)))))) ) ) # ( \RB[1]~input_o\ & ( (!\RB[2]~input_o\ & 
-- (\banc~1381_combout\)) # (\RB[2]~input_o\ & ((!\banc~1381_combout\ & (\banc~261_q\)) # (\banc~1381_combout\ & (((\banc~293_q\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0010011000110111001001100010011000100110001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RB[2]~input_o\,
	datab => \ALT_INV_banc~1381_combout\,
	datac => \ALT_INV_banc~261_q\,
	datad => \ALT_INV_banc~229_q\,
	datae => \ALT_INV_RB[1]~input_o\,
	dataf => \ALT_INV_banc~293_q\,
	datag => \ALT_INV_banc~197_q\,
	combout => \banc~1314_combout\);

-- Location: LABCELL_X27_Y64_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


