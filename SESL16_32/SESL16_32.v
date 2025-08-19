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
// CREATED		"Tue Aug 19 13:10:42 2025"

module SESL16_32(
	A,
	Y
);


input wire	[15:0] A;
output wire	[31:0] Y;

wire	[31:0] SYNTHESIZED_WIRE_0;





SE16_32	b2v_theExtender(
	.A(A),
	.Y(SYNTHESIZED_WIRE_0));


SL2_32	b2v_theShifter(
	.A(SYNTHESIZED_WIRE_0),
	.Y(Y));


endmodule
