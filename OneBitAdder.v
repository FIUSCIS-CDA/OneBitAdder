// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"
// CREATED		"Mon Feb 12 08:40:52 2024"

module OneBitAdder(
	ci,
	a,
	b,
	co,
	s
);


input wire	ci;
input wire	a;
input wire	b;
output wire	co;
output wire	s;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_13;




assign	SYNTHESIZED_WIRE_11 = b | a;

assign	SYNTHESIZED_WIRE_1 =  ~SYNTHESIZED_WIRE_0;

assign	s = SYNTHESIZED_WIRE_1 | SYNTHESIZED_WIRE_2;

assign	SYNTHESIZED_WIRE_5 = ci & SYNTHESIZED_WIRE_11;

assign	SYNTHESIZED_WIRE_12 = a & b;

assign	co = SYNTHESIZED_WIRE_12 | SYNTHESIZED_WIRE_5;

assign	SYNTHESIZED_WIRE_8 =  ~SYNTHESIZED_WIRE_11;

assign	SYNTHESIZED_WIRE_13 = SYNTHESIZED_WIRE_12 | SYNTHESIZED_WIRE_8;

assign	SYNTHESIZED_WIRE_2 = SYNTHESIZED_WIRE_13 & ci;

assign	SYNTHESIZED_WIRE_0 = ci | SYNTHESIZED_WIRE_13;


endmodule
