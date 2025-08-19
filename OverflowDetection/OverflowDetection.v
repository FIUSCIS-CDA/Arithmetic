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
// CREATED		"Tue Aug 19 10:30:20 2025"

module OverflowDetection(
	A,
	B,
	Result,
	Overflow
);


input wire	A;
input wire	B;
input wire	Result;
output wire	Overflow;

wire	notA;
wire	notB;
wire	notResult;
wire	signsDontMatch;
wire	twoNegResultPos;
wire	twoPosResNeg;




assign	twoNegResultPos = notA & notB & Result;

assign	twoPosResNeg = A & B & notResult;

assign	signsDontMatch = twoPosResNeg | twoNegResultPos;

assign	notA =  ~A;

assign	notB =  ~B;

assign	notResult =  ~Result;

assign	Overflow = signsDontMatch;

endmodule
