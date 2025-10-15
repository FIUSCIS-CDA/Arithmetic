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
// CREATED		"Fri Aug 22 12:31:37 2025"

module EQ_NONZERO_5(
	A,
	B,
	Y
);


input wire	[4:0] A;
input wire	[4:0] B;
output wire	Y;

wire	registersAreNotZero;
wire	registersAreTheSame;




assign	Y = registersAreTheSame & registersAreNotZero;


NONZERO_5	b2v_myNZ(
	.A(A),
	.Y(registersAreNotZero));


EQ_5	b2v_reg1EQreg2(
	.A(A),
	.B(B),
	.Y(registersAreTheSame));


endmodule
