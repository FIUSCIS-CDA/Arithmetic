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
// CREATED		"Tue Aug 19 10:37:29 2025"

module Subtractor_32(
	A,
	B,
	Overflow,
	Y
);


input wire	[31:0] A;
input wire	[31:0] B;
output wire	Overflow;
output wire	[31:0] Y;

wire	[31:0] NOTB;
wire	SYNTHESIZED_WIRE_0;

assign	SYNTHESIZED_WIRE_0 = 1;





Adder_32	b2v_theAdder(
	.CarryIn(SYNTHESIZED_WIRE_0),
	.A(A),
	.B(NOTB),
	.Overflow(Overflow),
	.S(Y));


NOT_32	b2v_theInverter(
	.A(B),
	.Y(NOTB));


endmodule
