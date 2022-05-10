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
// CREATED		"Tue May 10 09:13:47 2022"

module OneBitAdder(
	ci,
	a,
	b,
	s,
	co
);


input wire	ci;
input wire	a;
input wire	b;
output wire	s;
output wire	co;

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
