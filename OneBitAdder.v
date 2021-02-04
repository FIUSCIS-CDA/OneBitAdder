// Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, the Altera Quartus II License Agreement,
// the Altera MegaCore Function License Agreement, or other 
// applicable license agreement, including, without limitation, 
// that your use is for the sole purpose of programming logic 
// devices manufactured by Altera and sold by Altera or its 
// authorized distributors.  Please refer to the applicable 
// agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"
// CREATED		"Mon Feb  1 19:49:15 2021"

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

wire	______NOTa___AND___NOTb______OR___aANDb___;
wire	______NOTb___ANDa___OR______NOTa___ANDb___;
wire	___ciORa___ANDb;
wire	___NOTa___AND___NOTb___;
wire	___NOTa___ANDb;
wire	___NOTb___ANDa;
wire	___NOTci___AND_________NOTb___ANDa___OR______NOTa___ANDb______;
wire	aANDb;
wire	ciAND_________NOTa___AND___NOTb______OR___aANDb______;
wire	ciANDa;
wire	ciORa;
wire	NOTa;
wire	NOTb;
wire	NOTci;




assign	___NOTa___ANDb = NOTa & b;

assign	___ciORa___ANDb = ciORa & b;

assign	ciANDa = ci & a;

assign	aANDb = a & b;

assign	___NOTb___ANDa = a & NOTb;

assign	___NOTa___AND___NOTb___ = NOTa & NOTb;

assign	___NOTci___AND_________NOTb___ANDa___OR______NOTa___ANDb______ = NOTci & ______NOTb___ANDa___OR______NOTa___ANDb___;

assign	ciAND_________NOTa___AND___NOTb______OR___aANDb______ = ci & ______NOTa___AND___NOTb______OR___aANDb___;

assign	NOTa =  ~a;

assign	NOTb =  ~b;

assign	NOTci =  ~ci;

assign	ciORa = a | ci;

assign	co = ciANDa | ___ciORa___ANDb;

assign	______NOTb___ANDa___OR______NOTa___ANDb___ = ___NOTa___ANDb | ___NOTb___ANDa;

assign	______NOTa___AND___NOTb______OR___aANDb___ = ___NOTa___AND___NOTb___ | aANDb;

assign	s = ciAND_________NOTa___AND___NOTb______OR___aANDb______ | ___NOTci___AND_________NOTb___ANDa___OR______NOTa___ANDb______;


endmodule
