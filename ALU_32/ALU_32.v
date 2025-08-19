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
// CREATED		"Tue Aug 19 11:18:44 2025"

module ALU_32(
	A,
	alu_op,
	B,
	H,
	Overflow,
	Result
);


input wire	[31:0] A;
input wire	[2:0] alu_op;
input wire	[31:0] B;
input wire	[4:0] H;
output wire	Overflow;
output wire	[31:0] Result;

wire	[63:0] multout;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	[31:0] SYNTHESIZED_WIRE_8;
wire	[31:0] SYNTHESIZED_WIRE_9;
wire	[31:0] SYNTHESIZED_WIRE_10;
wire	[31:0] SYNTHESIZED_WIRE_11;
wire	[31:0] SYNTHESIZED_WIRE_12;
wire	[31:0] SYNTHESIZED_WIRE_13;
wire	[31:0] SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	[4:0] SYNTHESIZED_WIRE_16;

assign	SYNTHESIZED_WIRE_17 = 0;
assign	SYNTHESIZED_WIRE_15 = 0;






MUX8	b2v_inst47(
	.H(SYNTHESIZED_WIRE_17),
	.G(SYNTHESIZED_WIRE_17),
	.F(SYNTHESIZED_WIRE_17),
	.E(SYNTHESIZED_WIRE_3),
	.D(SYNTHESIZED_WIRE_4),
	.C(SYNTHESIZED_WIRE_5),
	.B(SYNTHESIZED_WIRE_17),
	.A(SYNTHESIZED_WIRE_17),
	.S(alu_op),
	.Y(Overflow));


AND_32	b2v_myAND(
	.A(A),
	.B(B),
	.Y(SYNTHESIZED_WIRE_8));


Less_32	b2v_myLess(
	.A(A),
	.B(B),
	.Overflow(SYNTHESIZED_WIRE_3),
	.Y(SYNTHESIZED_WIRE_12));


Log2_32	b2v_myLog(
	.A(A),
	.log2(SYNTHESIZED_WIRE_16));


Subtractor_32	b2v_myMinus(
	.A(A),
	.B(B),
	.Overflow(SYNTHESIZED_WIRE_4),
	.Y(SYNTHESIZED_WIRE_11));


Multiplier_32	b2v_myMult(
	.A(A),
	.B(B),
	.Z(multout));


MUX8_32	b2v_myMUX(
	.A(SYNTHESIZED_WIRE_8),
	.B(SYNTHESIZED_WIRE_9),
	.C(SYNTHESIZED_WIRE_10),
	.D(SYNTHESIZED_WIRE_11),
	.E(SYNTHESIZED_WIRE_12),
	.F(multout[31:0]),
	.G(SYNTHESIZED_WIRE_13),
	.H(SYNTHESIZED_WIRE_14),
	.S(alu_op),
	.Y(Result));


OR_32	b2v_myOR(
	.A(A),
	.B(B),
	.Y(SYNTHESIZED_WIRE_9));


Adder_32	b2v_myPlus(
	.CarryIn(SYNTHESIZED_WIRE_15),
	.A(A),
	.B(B),
	.Overflow(SYNTHESIZED_WIRE_5),
	.S(SYNTHESIZED_WIRE_10));


SLL_32	b2v_myShift(
	.A(B),
	.H(H),
	.Y(SYNTHESIZED_WIRE_13));


ZE5_32	b2v_myZE(
	.A(SYNTHESIZED_WIRE_16),
	.Y(SYNTHESIZED_WIRE_14));


endmodule
