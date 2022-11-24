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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Sat Nov 19 16:35:48 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY ParteC IS 
	PORT
	(
		Clock :  IN  STD_LOGIC;
		A0 :  IN  STD_LOGIC;
		A1 :  IN  STD_LOGIC;
		Cin :  IN  STD_LOGIC;
		A2 :  IN  STD_LOGIC;
		A3 :  IN  STD_LOGIC;
		B0 :  IN  STD_LOGIC;
		B1 :  IN  STD_LOGIC;
		B2 :  IN  STD_LOGIC;
		B3 :  IN  STD_LOGIC;
		S0 :  OUT  STD_LOGIC;
		S1 :  OUT  STD_LOGIC;
		S2 :  OUT  STD_LOGIC;
		S3 :  OUT  STD_LOGIC;
		C :  OUT  STD_LOGIC;
		N :  OUT  STD_LOGIC;
		V :  OUT  STD_LOGIC;
		Z :  OUT  STD_LOGIC
	);
END ParteC;

ARCHITECTURE bdf_type OF ParteC IS 

COMPONENT sumador_completo
	PORT(in_a : IN STD_LOGIC;
		 in_b : IN STD_LOGIC;
		 in_cin : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 o_f : OUT STD_LOGIC;
		 o_cout : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT d_ff
	PORT(D : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 Q : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_36 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_37 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_38 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_39 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_28 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_29 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_30 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_31 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_33 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_34 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_35 :  STD_LOGIC;


BEGIN 



b2v_inst : sumador_completo
PORT MAP(in_a => SYNTHESIZED_WIRE_0,
		 in_b => SYNTHESIZED_WIRE_1,
		 in_cin => SYNTHESIZED_WIRE_2,
		 clk => Clock,
		 o_f => SYNTHESIZED_WIRE_36,
		 o_cout => SYNTHESIZED_WIRE_16);


SYNTHESIZED_WIRE_12 <= SYNTHESIZED_WIRE_3 XOR Cin;


b2v_inst10 : d_ff
PORT MAP(D => SYNTHESIZED_WIRE_4,
		 clock => Clock,
		 Q => SYNTHESIZED_WIRE_29);


b2v_inst11 : d_ff
PORT MAP(D => SYNTHESIZED_WIRE_5,
		 clock => Clock,
		 Q => SYNTHESIZED_WIRE_30);


b2v_inst12 : d_ff
PORT MAP(D => SYNTHESIZED_WIRE_6,
		 clock => Clock,
		 Q => SYNTHESIZED_WIRE_33);


b2v_inst13 : d_ff
PORT MAP(D => SYNTHESIZED_WIRE_7,
		 clock => Clock,
		 Q => SYNTHESIZED_WIRE_34);


b2v_inst14 : d_ff
PORT MAP(D => SYNTHESIZED_WIRE_36,
		 clock => Clock,
		 Q => S0);


b2v_inst15 : d_ff
PORT MAP(D => SYNTHESIZED_WIRE_37,
		 clock => Clock,
		 Q => S1);


b2v_inst16 : d_ff
PORT MAP(D => SYNTHESIZED_WIRE_38,
		 clock => Clock,
		 Q => S2);


b2v_inst17 : d_ff
PORT MAP(D => SYNTHESIZED_WIRE_39,
		 clock => Clock,
		 Q => S3);


b2v_inst18 : d_ff
PORT MAP(D => SYNTHESIZED_WIRE_12,
		 clock => Clock,
		 Q => C);


b2v_inst19 : d_ff
PORT MAP(D => SYNTHESIZED_WIRE_13,
		 clock => Clock,
		 Q => Z);


b2v_inst2 : sumador_completo
PORT MAP(in_a => SYNTHESIZED_WIRE_14,
		 in_b => SYNTHESIZED_WIRE_15,
		 in_cin => SYNTHESIZED_WIRE_16,
		 clk => Clock,
		 o_f => SYNTHESIZED_WIRE_37,
		 o_cout => SYNTHESIZED_WIRE_31);


b2v_inst20 : d_ff
PORT MAP(D => SYNTHESIZED_WIRE_39,
		 clock => Clock,
		 Q => N);


b2v_inst21 : d_ff
PORT MAP(D => SYNTHESIZED_WIRE_18,
		 clock => Clock,
		 Q => V);


SYNTHESIZED_WIRE_4 <= B0 XOR Cin;


SYNTHESIZED_WIRE_5 <= B1 XOR Cin;


SYNTHESIZED_WIRE_6 <= B2 XOR Cin;


SYNTHESIZED_WIRE_7 <= B3 XOR Cin;


SYNTHESIZED_WIRE_13 <= NOT(SYNTHESIZED_WIRE_36 OR SYNTHESIZED_WIRE_38 OR SYNTHESIZED_WIRE_37 OR SYNTHESIZED_WIRE_39);


SYNTHESIZED_WIRE_18 <= SYNTHESIZED_WIRE_23 OR SYNTHESIZED_WIRE_24;


SYNTHESIZED_WIRE_24 <= SYNTHESIZED_WIRE_25 AND SYNTHESIZED_WIRE_26 AND SYNTHESIZED_WIRE_39;


SYNTHESIZED_WIRE_23 <= A3 AND B3 AND SYNTHESIZED_WIRE_28;


b2v_inst3 : sumador_completo
PORT MAP(in_a => SYNTHESIZED_WIRE_29,
		 in_b => SYNTHESIZED_WIRE_30,
		 in_cin => SYNTHESIZED_WIRE_31,
		 clk => Clock,
		 o_f => SYNTHESIZED_WIRE_38,
		 o_cout => SYNTHESIZED_WIRE_35);


SYNTHESIZED_WIRE_25 <= NOT(B3);



SYNTHESIZED_WIRE_26 <= NOT(A3);



SYNTHESIZED_WIRE_28 <= NOT(SYNTHESIZED_WIRE_39);



b2v_inst4 : sumador_completo
PORT MAP(in_a => SYNTHESIZED_WIRE_33,
		 in_b => SYNTHESIZED_WIRE_34,
		 in_cin => SYNTHESIZED_WIRE_35,
		 clk => Clock,
		 o_f => SYNTHESIZED_WIRE_39,
		 o_cout => SYNTHESIZED_WIRE_3);


b2v_inst5 : d_ff
PORT MAP(D => A0,
		 clock => Clock,
		 Q => SYNTHESIZED_WIRE_0);


b2v_inst6 : d_ff
PORT MAP(D => A1,
		 clock => Clock,
		 Q => SYNTHESIZED_WIRE_1);


b2v_inst7 : d_ff
PORT MAP(D => Cin,
		 clock => Clock,
		 Q => SYNTHESIZED_WIRE_2);


b2v_inst8 : d_ff
PORT MAP(D => A2,
		 clock => Clock,
		 Q => SYNTHESIZED_WIRE_14);


b2v_inst9 : d_ff
PORT MAP(D => A3,
		 clock => Clock,
		 Q => SYNTHESIZED_WIRE_15);


END bdf_type;