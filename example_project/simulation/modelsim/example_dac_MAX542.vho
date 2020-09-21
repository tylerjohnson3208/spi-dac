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

-- DATE "09/20/2020 18:10:11"

-- 
-- Device: Altera EP2C5T144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	example_dac_MAX542_top IS
    PORT (
	sclk_top : IN std_logic;
	ldac_out_top : OUT std_logic;
	cs_out_top : OUT std_logic;
	dout_top : OUT std_logic;
	sclk_out_top : OUT std_logic;
	led_1 : OUT std_logic;
	led_2 : OUT std_logic;
	led_3 : OUT std_logic
	);
END example_dac_MAX542_top;

-- Design Ports Information
-- ldac_out_top	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- cs_out_top	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- dout_top	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sclk_out_top	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led_1	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_2	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_3	=>  Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sclk_top	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF example_dac_MAX542_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sclk_top : std_logic;
SIGNAL ww_ldac_out_top : std_logic;
SIGNAL ww_cs_out_top : std_logic;
SIGNAL ww_dout_top : std_logic;
SIGNAL ww_sclk_out_top : std_logic;
SIGNAL ww_led_1 : std_logic;
SIGNAL ww_led_2 : std_logic;
SIGNAL ww_led_3 : std_logic;
SIGNAL \cs_top~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sig_sclk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sclk_top~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data[5]~20_combout\ : std_logic;
SIGNAL \data[8]~26_combout\ : std_logic;
SIGNAL \data[12]~34_combout\ : std_logic;
SIGNAL \data[14]~39\ : std_logic;
SIGNAL \data[15]~40_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \spi_dac_test|Mux0~2_combout\ : std_logic;
SIGNAL \spi_dac_test|Mux0~3_combout\ : std_logic;
SIGNAL \spi_dac_test|Mux0~4_combout\ : std_logic;
SIGNAL \data[1]~42_combout\ : std_logic;
SIGNAL \din_top[8]~feeder_combout\ : std_logic;
SIGNAL \din_top[15]~feeder_combout\ : std_logic;
SIGNAL \din_top[1]~feeder_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \iclk~1_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \iclk~0_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \iclk~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \sig_sclk_out~feeder_combout\ : std_logic;
SIGNAL \sclk_out_top~0_combout\ : std_logic;
SIGNAL \sig_sclk_out~regout\ : std_logic;
SIGNAL \sig_sclk_out~clkctrl_outclk\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \count~1_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \count~2_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \count~3_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \ldac_in_top~0_combout\ : std_logic;
SIGNAL \ldac_in_top~regout\ : std_logic;
SIGNAL \cs_top~0_combout\ : std_logic;
SIGNAL \cs_top~regout\ : std_logic;
SIGNAL \spi_dac_test|idx~1_combout\ : std_logic;
SIGNAL \cs_top~clkctrl_outclk\ : std_logic;
SIGNAL \spi_dac_test|idx~0_combout\ : std_logic;
SIGNAL \spi_dac_test|idx~3_combout\ : std_logic;
SIGNAL \spi_dac_test|idx~2_combout\ : std_logic;
SIGNAL \data[2]~14_combout\ : std_logic;
SIGNAL \data[2]~15\ : std_logic;
SIGNAL \data[3]~16_combout\ : std_logic;
SIGNAL \din_top[3]~feeder_combout\ : std_logic;
SIGNAL \data[3]~17\ : std_logic;
SIGNAL \data[4]~18_combout\ : std_logic;
SIGNAL \data[4]~19\ : std_logic;
SIGNAL \data[5]~21\ : std_logic;
SIGNAL \data[6]~22_combout\ : std_logic;
SIGNAL \data[6]~23\ : std_logic;
SIGNAL \data[7]~25\ : std_logic;
SIGNAL \data[8]~27\ : std_logic;
SIGNAL \data[9]~28_combout\ : std_logic;
SIGNAL \data[9]~29\ : std_logic;
SIGNAL \data[10]~31\ : std_logic;
SIGNAL \data[11]~32_combout\ : std_logic;
SIGNAL \spi_dac_test|Mux0~7_combout\ : std_logic;
SIGNAL \data[7]~24_combout\ : std_logic;
SIGNAL \spi_dac_test|Mux0~8_combout\ : std_logic;
SIGNAL \din_top[6]~feeder_combout\ : std_logic;
SIGNAL \spi_dac_test|Mux0~0_combout\ : std_logic;
SIGNAL \data[10]~30_combout\ : std_logic;
SIGNAL \data[11]~33\ : std_logic;
SIGNAL \data[12]~35\ : std_logic;
SIGNAL \data[13]~36_combout\ : std_logic;
SIGNAL \data[13]~37\ : std_logic;
SIGNAL \data[14]~38_combout\ : std_logic;
SIGNAL \spi_dac_test|Mux0~1_combout\ : std_logic;
SIGNAL \spi_dac_test|Mux0~5_combout\ : std_logic;
SIGNAL \spi_dac_test|Mux0~6_combout\ : std_logic;
SIGNAL \spi_dac_test|Mux0~9_combout\ : std_logic;
SIGNAL \sclk_top~combout\ : std_logic;
SIGNAL \sclk_top~clkctrl_outclk\ : std_logic;
SIGNAL \sclk_out_top~reg0_regout\ : std_logic;
SIGNAL \led_1~reg0_regout\ : std_logic;
SIGNAL \led_2~0_combout\ : std_logic;
SIGNAL \led_2~reg0_regout\ : std_logic;
SIGNAL iclk : std_logic_vector(5 DOWNTO 0);
SIGNAL din_top : std_logic_vector(15 DOWNTO 0);
SIGNAL data : std_logic_vector(15 DOWNTO 0);
SIGNAL count : std_logic_vector(4 DOWNTO 0);
SIGNAL \spi_dac_test|idx\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_sig_sclk_out~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_cs_top~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_cs_top~regout\ : std_logic;

BEGIN

ww_sclk_top <= sclk_top;
ldac_out_top <= ww_ldac_out_top;
cs_out_top <= ww_cs_out_top;
dout_top <= ww_dout_top;
sclk_out_top <= ww_sclk_out_top;
led_1 <= ww_led_1;
led_2 <= ww_led_2;
led_3 <= ww_led_3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\cs_top~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \cs_top~regout\);

\sig_sclk_out~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \sig_sclk_out~regout\);

\sclk_top~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \sclk_top~combout\);
\ALT_INV_sig_sclk_out~clkctrl_outclk\ <= NOT \sig_sclk_out~clkctrl_outclk\;
\ALT_INV_cs_top~clkctrl_outclk\ <= NOT \cs_top~clkctrl_outclk\;
\ALT_INV_cs_top~regout\ <= NOT \cs_top~regout\;

-- Location: LCFF_X9_Y12_N7
\data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sig_sclk_out~clkctrl_outclk\,
	datain => \data[5]~20_combout\,
	ena => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(5));

-- Location: LCFF_X9_Y12_N13
\data[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sig_sclk_out~clkctrl_outclk\,
	datain => \data[8]~26_combout\,
	ena => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(8));

-- Location: LCFF_X9_Y12_N21
\data[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sig_sclk_out~clkctrl_outclk\,
	datain => \data[12]~34_combout\,
	ena => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(12));

-- Location: LCFF_X9_Y12_N27
\data[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sig_sclk_out~clkctrl_outclk\,
	datain => \data[15]~40_combout\,
	ena => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(15));

-- Location: LCCOMB_X9_Y12_N6
\data[5]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \data[5]~20_combout\ = (data(5) & (!\data[4]~19\)) # (!data(5) & ((\data[4]~19\) # (GND)))
-- \data[5]~21\ = CARRY((!\data[4]~19\) # (!data(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => data(5),
	datad => VCC,
	cin => \data[4]~19\,
	combout => \data[5]~20_combout\,
	cout => \data[5]~21\);

-- Location: LCCOMB_X9_Y12_N12
\data[8]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \data[8]~26_combout\ = (data(8) & (\data[7]~25\ $ (GND))) # (!data(8) & (!\data[7]~25\ & VCC))
-- \data[8]~27\ = CARRY((data(8) & !\data[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => data(8),
	datad => VCC,
	cin => \data[7]~25\,
	combout => \data[8]~26_combout\,
	cout => \data[8]~27\);

-- Location: LCCOMB_X9_Y12_N20
\data[12]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \data[12]~34_combout\ = (data(12) & (\data[11]~33\ $ (GND))) # (!data(12) & (!\data[11]~33\ & VCC))
-- \data[12]~35\ = CARRY((data(12) & !\data[11]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => data(12),
	datad => VCC,
	cin => \data[11]~33\,
	combout => \data[12]~34_combout\,
	cout => \data[12]~35\);

-- Location: LCCOMB_X9_Y12_N24
\data[14]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \data[14]~38_combout\ = (data(14) & (\data[13]~37\ $ (GND))) # (!data(14) & (!\data[13]~37\ & VCC))
-- \data[14]~39\ = CARRY((data(14) & !\data[13]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => data(14),
	datad => VCC,
	cin => \data[13]~37\,
	combout => \data[14]~38_combout\,
	cout => \data[14]~39\);

-- Location: LCCOMB_X9_Y12_N26
\data[15]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \data[15]~40_combout\ = \data[14]~39\ $ (data(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => data(15),
	cin => \data[14]~39\,
	combout => \data[15]~40_combout\);

-- Location: LCCOMB_X13_Y5_N10
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (iclk(2) & (\Add0~3\ $ (GND))) # (!iclk(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((iclk(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => iclk(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X13_Y5_N12
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (iclk(3) & (!\Add0~5\)) # (!iclk(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!iclk(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => iclk(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCFF_X10_Y11_N29
\din_top[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sig_sclk_out~clkctrl_outclk\,
	sdata => data(9),
	sload => VCC,
	ena => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => din_top(9));

-- Location: LCFF_X10_Y11_N31
\din_top[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sig_sclk_out~clkctrl_outclk\,
	sdata => data(5),
	sload => VCC,
	ena => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => din_top(5));

-- Location: LCFF_X10_Y11_N1
\din_top[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sig_sclk_out~clkctrl_outclk\,
	datain => \din_top[1]~feeder_combout\,
	ena => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => din_top(1));

-- Location: LCCOMB_X10_Y11_N30
\spi_dac_test|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_dac_test|Mux0~2_combout\ = (\spi_dac_test|idx\(2) & (din_top(1) & ((\spi_dac_test|idx\(3))))) # (!\spi_dac_test|idx\(2) & (((din_top(5)) # (!\spi_dac_test|idx\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_dac_test|idx\(2),
	datab => din_top(1),
	datac => din_top(5),
	datad => \spi_dac_test|idx\(3),
	combout => \spi_dac_test|Mux0~2_combout\);

-- Location: LCFF_X10_Y11_N11
\din_top[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sig_sclk_out~clkctrl_outclk\,
	sdata => data(13),
	sload => VCC,
	ena => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => din_top(13));

-- Location: LCCOMB_X10_Y11_N10
\spi_dac_test|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_dac_test|Mux0~3_combout\ = (\spi_dac_test|Mux0~2_combout\ & (((din_top(13)) # (\spi_dac_test|idx\(3))))) # (!\spi_dac_test|Mux0~2_combout\ & (din_top(9) & ((!\spi_dac_test|idx\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_dac_test|Mux0~2_combout\,
	datab => din_top(9),
	datac => din_top(13),
	datad => \spi_dac_test|idx\(3),
	combout => \spi_dac_test|Mux0~3_combout\);

-- Location: LCFF_X9_Y12_N29
\din_top[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sig_sclk_out~clkctrl_outclk\,
	datain => \din_top[8]~feeder_combout\,
	ena => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => din_top(8));

-- Location: LCFF_X14_Y13_N17
\din_top[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sig_sclk_out~clkctrl_outclk\,
	sdata => data(12),
	sload => VCC,
	ena => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => din_top(12));

-- Location: LCCOMB_X14_Y13_N16
\spi_dac_test|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_dac_test|Mux0~4_combout\ = (!\spi_dac_test|idx\(3) & ((\spi_dac_test|idx\(2) & (din_top(8))) # (!\spi_dac_test|idx\(2) & ((din_top(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_dac_test|idx\(2),
	datab => din_top(8),
	datac => din_top(12),
	datad => \spi_dac_test|idx\(3),
	combout => \spi_dac_test|Mux0~4_combout\);

-- Location: LCFF_X14_Y13_N13
\din_top[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sig_sclk_out~clkctrl_outclk\,
	datain => \din_top[15]~feeder_combout\,
	ena => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => din_top(15));

-- Location: LCFF_X10_Y11_N7
\data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sig_sclk_out~clkctrl_outclk\,
	datain => \data[1]~42_combout\,
	ena => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(1));

-- Location: LCFF_X13_Y5_N11
\iclk[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sclk_top~clkctrl_outclk\,
	datain => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => iclk(2));

-- Location: LCFF_X13_Y5_N13
\iclk[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sclk_top~clkctrl_outclk\,
	datain => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => iclk(3));

-- Location: LCCOMB_X10_Y11_N6
\data[1]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \data[1]~42_combout\ = !data(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data(1),
	combout => \data[1]~42_combout\);

-- Location: LCCOMB_X9_Y12_N28
\din_top[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \din_top[8]~feeder_combout\ = data(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(8),
	combout => \din_top[8]~feeder_combout\);

-- Location: LCCOMB_X14_Y13_N12
\din_top[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \din_top[15]~feeder_combout\ = data(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(15),
	combout => \din_top[15]~feeder_combout\);

-- Location: LCCOMB_X10_Y11_N0
\din_top[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \din_top[1]~feeder_combout\ = data(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(1),
	combout => \din_top[1]~feeder_combout\);

-- Location: LCCOMB_X13_Y5_N6
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = iclk(0) $ (VCC)
-- \Add0~1\ = CARRY(iclk(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => iclk(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X13_Y5_N8
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (iclk(1) & (!\Add0~1\)) # (!iclk(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!iclk(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => iclk(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X13_Y5_N4
\iclk~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \iclk~1_combout\ = (\Add0~2_combout\ & \Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~2_combout\,
	datad => \Equal1~0_combout\,
	combout => \iclk~1_combout\);

-- Location: LCFF_X13_Y5_N5
\iclk[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sclk_top~clkctrl_outclk\,
	datain => \iclk~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => iclk(1));

-- Location: LCCOMB_X13_Y5_N14
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (iclk(4) & (\Add0~7\ $ (GND))) # (!iclk(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((iclk(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => iclk(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X13_Y5_N18
\iclk~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iclk~0_combout\ = (\Add0~8_combout\ & \Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~8_combout\,
	datad => \Equal1~0_combout\,
	combout => \iclk~0_combout\);

-- Location: LCFF_X13_Y5_N19
\iclk[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sclk_top~clkctrl_outclk\,
	datain => \iclk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => iclk(4));

-- Location: LCCOMB_X13_Y5_N16
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = \Add0~9\ $ (iclk(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => iclk(5),
	cin => \Add0~9\,
	combout => \Add0~10_combout\);

-- Location: LCCOMB_X13_Y5_N28
\iclk~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \iclk~2_combout\ = (\Add0~10_combout\ & \Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~10_combout\,
	datad => \Equal1~0_combout\,
	combout => \iclk~2_combout\);

-- Location: LCFF_X13_Y5_N29
\iclk[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sclk_top~clkctrl_outclk\,
	datain => \iclk~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => iclk(5));

-- Location: LCCOMB_X13_Y5_N2
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!iclk(2) & (iclk(4) & !iclk(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => iclk(2),
	datab => iclk(4),
	datac => iclk(1),
	combout => \Equal0~0_combout\);

-- Location: LCFF_X13_Y5_N7
\iclk[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sclk_top~clkctrl_outclk\,
	datain => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => iclk(0));

-- Location: LCCOMB_X13_Y5_N0
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (iclk(3)) # (((!iclk(0)) # (!\Equal0~0_combout\)) # (!iclk(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => iclk(3),
	datab => iclk(5),
	datac => \Equal0~0_combout\,
	datad => iclk(0),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X3_Y6_N4
\sig_sclk_out~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \sig_sclk_out~feeder_combout\ = \Equal1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal1~0_combout\,
	combout => \sig_sclk_out~feeder_combout\);

-- Location: LCCOMB_X13_Y5_N22
\sclk_out_top~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sclk_out_top~0_combout\ = (\Equal0~0_combout\ & ((iclk(3) & (!iclk(5) & !iclk(0))) # (!iclk(3) & (iclk(5) & iclk(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => iclk(3),
	datab => iclk(5),
	datac => \Equal0~0_combout\,
	datad => iclk(0),
	combout => \sclk_out_top~0_combout\);

-- Location: LCFF_X3_Y6_N5
sig_sclk_out : cycloneii_lcell_ff
PORT MAP (
	clk => \sclk_top~combout\,
	datain => \sig_sclk_out~feeder_combout\,
	ena => \sclk_out_top~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sig_sclk_out~regout\);

-- Location: CLKCTRL_G4
\sig_sclk_out~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sig_sclk_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sig_sclk_out~clkctrl_outclk\);

-- Location: LCCOMB_X5_Y6_N10
\Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = count(0) $ (VCC)
-- \Add2~1\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X5_Y6_N12
\Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (count(1) & (\Add2~1\ & VCC)) # (!count(1) & (!\Add2~1\))
-- \Add2~3\ = CARRY((!count(1) & !\Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X5_Y6_N28
\count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \count~1_combout\ = (\Add2~2_combout\ & ((count(4)) # (!\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datac => \Equal2~0_combout\,
	datad => \Add2~2_combout\,
	combout => \count~1_combout\);

-- Location: LCFF_X5_Y6_N29
\count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sig_sclk_out~clkctrl_outclk\,
	datain => \count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(1));

-- Location: LCCOMB_X5_Y6_N14
\Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (count(2) & ((GND) # (!\Add2~3\))) # (!count(2) & (\Add2~3\ $ (GND)))
-- \Add2~5\ = CARRY((count(2)) # (!\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X5_Y6_N22
\count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \count~2_combout\ = (\Add2~4_combout\ & ((count(4)) # (!\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~0_combout\,
	datac => \Add2~4_combout\,
	datad => count(4),
	combout => \count~2_combout\);

-- Location: LCFF_X5_Y6_N23
\count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sig_sclk_out~clkctrl_outclk\,
	datain => \count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(2));

-- Location: LCCOMB_X5_Y6_N16
\Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (count(3) & (\Add2~5\ & VCC)) # (!count(3) & (!\Add2~5\))
-- \Add2~7\ = CARRY((!count(3) & !\Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X5_Y6_N18
\Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = \Add2~7\ $ (count(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count(4),
	cin => \Add2~7\,
	combout => \Add2~8_combout\);

-- Location: LCFF_X5_Y6_N19
\count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sig_sclk_out~clkctrl_outclk\,
	datain => \Add2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(4));

-- Location: LCCOMB_X5_Y6_N26
\count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \count~0_combout\ = (\Add2~0_combout\ & ((count(4)) # (!\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datac => \Equal2~0_combout\,
	datad => \Add2~0_combout\,
	combout => \count~0_combout\);

-- Location: LCFF_X5_Y6_N27
\count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sig_sclk_out~clkctrl_outclk\,
	datain => \count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(0));

-- Location: LCCOMB_X5_Y6_N24
\count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \count~3_combout\ = (\Add2~6_combout\ & ((count(4)) # (!\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~0_combout\,
	datac => \Add2~6_combout\,
	datad => count(4),
	combout => \count~3_combout\);

-- Location: LCFF_X5_Y6_N25
\count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sig_sclk_out~clkctrl_outclk\,
	datain => \count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(3));

-- Location: LCCOMB_X5_Y6_N4
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!count(1) & (!count(0) & (!count(3) & !count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => count(0),
	datac => count(3),
	datad => count(2),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X5_Y6_N0
\Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (\Equal2~0_combout\ & !count(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~0_combout\,
	datad => count(4),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X10_Y11_N16
\ldac_in_top~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ldac_in_top~0_combout\ = !\Equal2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal2~1_combout\,
	combout => \ldac_in_top~0_combout\);

-- Location: LCFF_X10_Y11_N17
ldac_in_top : cycloneii_lcell_ff
PORT MAP (
	clk => \sig_sclk_out~clkctrl_outclk\,
	datain => \ldac_in_top~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ldac_in_top~regout\);

-- Location: LCCOMB_X10_Y11_N26
\cs_top~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cs_top~0_combout\ = !\Equal2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal2~1_combout\,
	combout => \cs_top~0_combout\);

-- Location: LCFF_X10_Y11_N27
cs_top : cycloneii_lcell_ff
PORT MAP (
	clk => \sig_sclk_out~clkctrl_outclk\,
	datain => \cs_top~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cs_top~regout\);

-- Location: LCCOMB_X14_Y13_N6
\spi_dac_test|idx~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_dac_test|idx~1_combout\ = (\spi_dac_test|idx\(1) & ((\spi_dac_test|idx\(0) & ((\spi_dac_test|idx\(3)) # (!\spi_dac_test|idx\(2)))) # (!\spi_dac_test|idx\(0) & (\spi_dac_test|idx\(2))))) # (!\spi_dac_test|idx\(1) & (((\spi_dac_test|idx\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_dac_test|idx\(1),
	datab => \spi_dac_test|idx\(0),
	datac => \spi_dac_test|idx\(2),
	datad => \spi_dac_test|idx\(3),
	combout => \spi_dac_test|idx~1_combout\);

-- Location: CLKCTRL_G0
\cs_top~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \cs_top~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \cs_top~clkctrl_outclk\);

-- Location: LCFF_X14_Y13_N7
\spi_dac_test|idx[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_sig_sclk_out~clkctrl_outclk\,
	datain => \spi_dac_test|idx~1_combout\,
	aclr => \ALT_INV_cs_top~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_dac_test|idx\(2));

-- Location: LCCOMB_X14_Y13_N10
\spi_dac_test|idx~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_dac_test|idx~0_combout\ = (\spi_dac_test|idx\(3)) # ((\spi_dac_test|idx\(1) & (\spi_dac_test|idx\(0) & \spi_dac_test|idx\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_dac_test|idx\(1),
	datab => \spi_dac_test|idx\(0),
	datac => \spi_dac_test|idx\(3),
	datad => \spi_dac_test|idx\(2),
	combout => \spi_dac_test|idx~0_combout\);

-- Location: LCFF_X14_Y13_N11
\spi_dac_test|idx[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_sig_sclk_out~clkctrl_outclk\,
	datain => \spi_dac_test|idx~0_combout\,
	aclr => \ALT_INV_cs_top~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_dac_test|idx\(3));

-- Location: LCCOMB_X14_Y13_N30
\spi_dac_test|idx~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_dac_test|idx~3_combout\ = ((\spi_dac_test|idx\(1) & (\spi_dac_test|idx\(3) & \spi_dac_test|idx\(2)))) # (!\spi_dac_test|idx\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_dac_test|idx\(1),
	datab => \spi_dac_test|idx\(3),
	datac => \spi_dac_test|idx\(0),
	datad => \spi_dac_test|idx\(2),
	combout => \spi_dac_test|idx~3_combout\);

-- Location: LCFF_X14_Y13_N31
\spi_dac_test|idx[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_sig_sclk_out~clkctrl_outclk\,
	datain => \spi_dac_test|idx~3_combout\,
	aclr => \ALT_INV_cs_top~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_dac_test|idx\(0));

-- Location: LCCOMB_X14_Y13_N20
\spi_dac_test|idx~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_dac_test|idx~2_combout\ = (\spi_dac_test|idx\(0) & (((\spi_dac_test|idx\(2) & \spi_dac_test|idx\(3))) # (!\spi_dac_test|idx\(1)))) # (!\spi_dac_test|idx\(0) & (((\spi_dac_test|idx\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_dac_test|idx\(2),
	datab => \spi_dac_test|idx\(0),
	datac => \spi_dac_test|idx\(1),
	datad => \spi_dac_test|idx\(3),
	combout => \spi_dac_test|idx~2_combout\);

-- Location: LCFF_X14_Y13_N21
\spi_dac_test|idx[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_sig_sclk_out~clkctrl_outclk\,
	datain => \spi_dac_test|idx~2_combout\,
	aclr => \ALT_INV_cs_top~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_dac_test|idx\(1));

-- Location: LCCOMB_X9_Y12_N0
\data[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \data[2]~14_combout\ = (data(1) & (data(2) $ (VCC))) # (!data(1) & (data(2) & VCC))
-- \data[2]~15\ = CARRY((data(1) & data(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(1),
	datab => data(2),
	datad => VCC,
	combout => \data[2]~14_combout\,
	cout => \data[2]~15\);

-- Location: LCFF_X9_Y12_N1
\data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sig_sclk_out~clkctrl_outclk\,
	datain => \data[2]~14_combout\,
	ena => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(2));

-- Location: LCCOMB_X9_Y12_N2
\data[3]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \data[3]~16_combout\ = (data(3) & (\data[2]~15\ & VCC)) # (!data(3) & (!\data[2]~15\))
-- \data[3]~17\ = CARRY((!data(3) & !\data[2]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => data(3),
	datad => VCC,
	cin => \data[2]~15\,
	combout => \data[3]~16_combout\,
	cout => \data[3]~17\);

-- Location: LCFF_X9_Y12_N3
\data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sig_sclk_out~clkctrl_outclk\,
	datain => \data[3]~16_combout\,
	ena => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(3));

-- Location: LCCOMB_X14_Y13_N2
\din_top[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \din_top[3]~feeder_combout\ = data(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(3),
	combout => \din_top[3]~feeder_combout\);

-- Location: LCFF_X14_Y13_N3
\din_top[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sig_sclk_out~clkctrl_outclk\,
	datain => \din_top[3]~feeder_combout\,
	ena => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => din_top(3));

-- Location: LCCOMB_X9_Y12_N4
\data[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \data[4]~18_combout\ = (data(4) & (\data[3]~17\ $ (GND))) # (!data(4) & (!\data[3]~17\ & VCC))
-- \data[4]~19\ = CARRY((data(4) & !\data[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => data(4),
	datad => VCC,
	cin => \data[3]~17\,
	combout => \data[4]~18_combout\,
	cout => \data[4]~19\);

-- Location: LCFF_X9_Y12_N5
\data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sig_sclk_out~clkctrl_outclk\,
	datain => \data[4]~18_combout\,
	ena => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(4));

-- Location: LCCOMB_X9_Y12_N8
\data[6]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \data[6]~22_combout\ = (data(6) & (\data[5]~21\ $ (GND))) # (!data(6) & (!\data[5]~21\ & VCC))
-- \data[6]~23\ = CARRY((data(6) & !\data[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => data(6),
	datad => VCC,
	cin => \data[5]~21\,
	combout => \data[6]~22_combout\,
	cout => \data[6]~23\);

-- Location: LCFF_X9_Y12_N9
\data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sig_sclk_out~clkctrl_outclk\,
	datain => \data[6]~22_combout\,
	ena => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(6));

-- Location: LCCOMB_X9_Y12_N10
\data[7]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \data[7]~24_combout\ = (data(7) & (!\data[6]~23\)) # (!data(7) & ((\data[6]~23\) # (GND)))
-- \data[7]~25\ = CARRY((!\data[6]~23\) # (!data(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => data(7),
	datad => VCC,
	cin => \data[6]~23\,
	combout => \data[7]~24_combout\,
	cout => \data[7]~25\);

-- Location: LCCOMB_X9_Y12_N14
\data[9]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \data[9]~28_combout\ = (data(9) & (!\data[8]~27\)) # (!data(9) & ((\data[8]~27\) # (GND)))
-- \data[9]~29\ = CARRY((!\data[8]~27\) # (!data(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => data(9),
	datad => VCC,
	cin => \data[8]~27\,
	combout => \data[9]~28_combout\,
	cout => \data[9]~29\);

-- Location: LCFF_X9_Y12_N15
\data[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sig_sclk_out~clkctrl_outclk\,
	datain => \data[9]~28_combout\,
	ena => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(9));

-- Location: LCCOMB_X9_Y12_N16
\data[10]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \data[10]~30_combout\ = (data(10) & (\data[9]~29\ $ (GND))) # (!data(10) & (!\data[9]~29\ & VCC))
-- \data[10]~31\ = CARRY((data(10) & !\data[9]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => data(10),
	datad => VCC,
	cin => \data[9]~29\,
	combout => \data[10]~30_combout\,
	cout => \data[10]~31\);

-- Location: LCCOMB_X9_Y12_N18
\data[11]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \data[11]~32_combout\ = (data(11) & (!\data[10]~31\)) # (!data(11) & ((\data[10]~31\) # (GND)))
-- \data[11]~33\ = CARRY((!\data[10]~31\) # (!data(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => data(11),
	datad => VCC,
	cin => \data[10]~31\,
	combout => \data[11]~32_combout\,
	cout => \data[11]~33\);

-- Location: LCFF_X9_Y12_N19
\data[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sig_sclk_out~clkctrl_outclk\,
	datain => \data[11]~32_combout\,
	ena => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(11));

-- Location: LCFF_X14_Y13_N1
\din_top[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sig_sclk_out~clkctrl_outclk\,
	sdata => data(11),
	sload => VCC,
	ena => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => din_top(11));

-- Location: LCCOMB_X14_Y13_N0
\spi_dac_test|Mux0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_dac_test|Mux0~7_combout\ = (\spi_dac_test|idx\(2) & ((\spi_dac_test|idx\(3) & (din_top(3))) # (!\spi_dac_test|idx\(3) & ((din_top(11)))))) # (!\spi_dac_test|idx\(2) & (((!\spi_dac_test|idx\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_dac_test|idx\(2),
	datab => din_top(3),
	datac => din_top(11),
	datad => \spi_dac_test|idx\(3),
	combout => \spi_dac_test|Mux0~7_combout\);

-- Location: LCFF_X9_Y12_N11
\data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sig_sclk_out~clkctrl_outclk\,
	datain => \data[7]~24_combout\,
	ena => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(7));

-- Location: LCFF_X14_Y13_N15
\din_top[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sig_sclk_out~clkctrl_outclk\,
	sdata => data(7),
	sload => VCC,
	ena => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => din_top(7));

-- Location: LCCOMB_X14_Y13_N14
\spi_dac_test|Mux0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_dac_test|Mux0~8_combout\ = (\spi_dac_test|Mux0~7_combout\ & ((din_top(15)) # ((\spi_dac_test|idx\(2))))) # (!\spi_dac_test|Mux0~7_combout\ & (((din_top(7) & !\spi_dac_test|idx\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => din_top(15),
	datab => \spi_dac_test|Mux0~7_combout\,
	datac => din_top(7),
	datad => \spi_dac_test|idx\(2),
	combout => \spi_dac_test|Mux0~8_combout\);

-- Location: LCCOMB_X14_Y13_N4
\din_top[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \din_top[6]~feeder_combout\ = data(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(6),
	combout => \din_top[6]~feeder_combout\);

-- Location: LCFF_X14_Y13_N5
\din_top[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sig_sclk_out~clkctrl_outclk\,
	datain => \din_top[6]~feeder_combout\,
	ena => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => din_top(6));

-- Location: LCFF_X14_Y13_N9
\din_top[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sig_sclk_out~clkctrl_outclk\,
	sdata => data(2),
	sload => VCC,
	ena => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => din_top(2));

-- Location: LCCOMB_X14_Y13_N8
\spi_dac_test|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_dac_test|Mux0~0_combout\ = (\spi_dac_test|idx\(2) & (((din_top(2) & \spi_dac_test|idx\(3))))) # (!\spi_dac_test|idx\(2) & ((din_top(6)) # ((!\spi_dac_test|idx\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_dac_test|idx\(2),
	datab => din_top(6),
	datac => din_top(2),
	datad => \spi_dac_test|idx\(3),
	combout => \spi_dac_test|Mux0~0_combout\);

-- Location: LCFF_X9_Y12_N17
\data[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sig_sclk_out~clkctrl_outclk\,
	datain => \data[10]~30_combout\,
	ena => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(10));

-- Location: LCFF_X14_Y13_N25
\din_top[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sig_sclk_out~clkctrl_outclk\,
	sdata => data(10),
	sload => VCC,
	ena => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => din_top(10));

-- Location: LCCOMB_X9_Y12_N22
\data[13]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \data[13]~36_combout\ = (data(13) & (!\data[12]~35\)) # (!data(13) & ((\data[12]~35\) # (GND)))
-- \data[13]~37\ = CARRY((!\data[12]~35\) # (!data(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => data(13),
	datad => VCC,
	cin => \data[12]~35\,
	combout => \data[13]~36_combout\,
	cout => \data[13]~37\);

-- Location: LCFF_X9_Y12_N23
\data[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sig_sclk_out~clkctrl_outclk\,
	datain => \data[13]~36_combout\,
	ena => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(13));

-- Location: LCFF_X9_Y12_N25
\data[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sig_sclk_out~clkctrl_outclk\,
	datain => \data[14]~38_combout\,
	ena => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(14));

-- Location: LCFF_X14_Y13_N27
\din_top[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sig_sclk_out~clkctrl_outclk\,
	sdata => data(14),
	sload => VCC,
	ena => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => din_top(14));

-- Location: LCCOMB_X14_Y13_N24
\spi_dac_test|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_dac_test|Mux0~1_combout\ = (\spi_dac_test|idx\(3) & (\spi_dac_test|Mux0~0_combout\)) # (!\spi_dac_test|idx\(3) & ((\spi_dac_test|Mux0~0_combout\ & ((din_top(14)))) # (!\spi_dac_test|Mux0~0_combout\ & (din_top(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_dac_test|idx\(3),
	datab => \spi_dac_test|Mux0~0_combout\,
	datac => din_top(10),
	datad => din_top(14),
	combout => \spi_dac_test|Mux0~1_combout\);

-- Location: LCFF_X14_Y13_N19
\din_top[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sig_sclk_out~clkctrl_outclk\,
	sdata => data(4),
	sload => VCC,
	ena => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => din_top(4));

-- Location: LCCOMB_X14_Y13_N18
\spi_dac_test|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_dac_test|Mux0~5_combout\ = (\spi_dac_test|Mux0~4_combout\) # ((\spi_dac_test|idx\(3) & (din_top(4) & !\spi_dac_test|idx\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_dac_test|Mux0~4_combout\,
	datab => \spi_dac_test|idx\(3),
	datac => din_top(4),
	datad => \spi_dac_test|idx\(2),
	combout => \spi_dac_test|Mux0~5_combout\);

-- Location: LCCOMB_X14_Y13_N28
\spi_dac_test|Mux0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_dac_test|Mux0~6_combout\ = (\spi_dac_test|idx\(0) & (((\spi_dac_test|idx\(1) & \spi_dac_test|Mux0~5_combout\)))) # (!\spi_dac_test|idx\(0) & ((\spi_dac_test|Mux0~3_combout\) # ((!\spi_dac_test|idx\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_dac_test|Mux0~3_combout\,
	datab => \spi_dac_test|idx\(0),
	datac => \spi_dac_test|idx\(1),
	datad => \spi_dac_test|Mux0~5_combout\,
	combout => \spi_dac_test|Mux0~6_combout\);

-- Location: LCCOMB_X14_Y13_N22
\spi_dac_test|Mux0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_dac_test|Mux0~9_combout\ = (\spi_dac_test|idx\(1) & (((\spi_dac_test|Mux0~6_combout\)))) # (!\spi_dac_test|idx\(1) & ((\spi_dac_test|Mux0~6_combout\ & (\spi_dac_test|Mux0~8_combout\)) # (!\spi_dac_test|Mux0~6_combout\ & 
-- ((\spi_dac_test|Mux0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_dac_test|idx\(1),
	datab => \spi_dac_test|Mux0~8_combout\,
	datac => \spi_dac_test|Mux0~1_combout\,
	datad => \spi_dac_test|Mux0~6_combout\,
	combout => \spi_dac_test|Mux0~9_combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sclk_top~I\ : cycloneii_io
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
	padio => ww_sclk_top,
	combout => \sclk_top~combout\);

-- Location: CLKCTRL_G2
\sclk_top~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sclk_top~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sclk_top~clkctrl_outclk\);

-- Location: LCFF_X13_Y5_N1
\sclk_out_top~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sclk_top~clkctrl_outclk\,
	datain => \Equal1~0_combout\,
	ena => \sclk_out_top~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sclk_out_top~reg0_regout\);

-- Location: LCFF_X5_Y6_N1
\led_1~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sig_sclk_out~clkctrl_outclk\,
	datain => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led_1~reg0_regout\);

-- Location: LCCOMB_X10_Y11_N20
\led_2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_2~0_combout\ = !\Equal2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal2~1_combout\,
	combout => \led_2~0_combout\);

-- Location: LCFF_X10_Y11_N21
\led_2~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \sig_sclk_out~clkctrl_outclk\,
	datain => \led_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led_2~reg0_regout\);

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
\ldac_out_top~I\ : cycloneii_io
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
	datain => \ldac_in_top~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ldac_out_top);

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
\cs_out_top~I\ : cycloneii_io
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
	datain => \ALT_INV_cs_top~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cs_out_top);

-- Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
\dout_top~I\ : cycloneii_io
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
	datain => \spi_dac_test|Mux0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout_top);

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
\sclk_out_top~I\ : cycloneii_io
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
	datain => \sclk_out_top~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sclk_out_top);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_1~I\ : cycloneii_io
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
	datain => \led_1~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_1);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_2~I\ : cycloneii_io
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
	datain => \led_2~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_2);

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_3~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_3);
END structure;


