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
// CREATED		"Tue Aug 19 10:32:49 2025"

module Adder_32(
	CarryIn,
	A,
	B,
	Overflow,
	S
);


input wire	CarryIn;
input wire	[31:0] A;
input wire	[31:0] B;
output wire	Overflow;
output wire	[31:0] S;

wire	Carry0To1;
wire	Carry10To11;
wire	Carry11To12;
wire	Carry12To13;
wire	Carry13To14;
wire	Carry14To15;
wire	Carry15To16;
wire	Carry16To17;
wire	Carry17To18;
wire	Carry18To19;
wire	Carry19To20;
wire	Carry1To2;
wire	Carry20To21;
wire	Carry21To22;
wire	Carry22To23;
wire	Carry23To24;
wire	Carry24To25;
wire	Carry25To26;
wire	Carry26To27;
wire	Carry27To28;
wire	Carry28To29;
wire	Carry29To30;
wire	Carry2To3;
wire	Carry30To31;
wire	Carry3To4;
wire	Carry4To5;
wire	Carry5To6;
wire	Carry6To7;
wire	Carry7To8;
wire	Carry8To9;
wire	Carry9To10;
wire	[31:0] S_ALTERA_SYNTHESIZED;





OneBitAdder	b2v_bit00(
	.ci(CarryIn),
	.a(A[0]),
	.b(B[0]),
	.co(Carry0To1),
	.s(S_ALTERA_SYNTHESIZED[0]));


OneBitAdder	b2v_bit01(
	.ci(Carry0To1),
	.a(A[1]),
	.b(B[1]),
	.co(Carry1To2),
	.s(S_ALTERA_SYNTHESIZED[1]));


OneBitAdder	b2v_bit02(
	.ci(Carry1To2),
	.a(A[2]),
	.b(B[2]),
	.co(Carry2To3),
	.s(S_ALTERA_SYNTHESIZED[2]));


OneBitAdder	b2v_bit03(
	.ci(Carry2To3),
	.a(A[3]),
	.b(B[3]),
	.co(Carry3To4),
	.s(S_ALTERA_SYNTHESIZED[3]));


OneBitAdder	b2v_bit04(
	.ci(Carry3To4),
	.a(A[4]),
	.b(B[4]),
	.co(Carry4To5),
	.s(S_ALTERA_SYNTHESIZED[4]));


OneBitAdder	b2v_bit05(
	.ci(Carry4To5),
	.a(A[5]),
	.b(B[5]),
	.co(Carry5To6),
	.s(S_ALTERA_SYNTHESIZED[5]));


OneBitAdder	b2v_bit06(
	.ci(Carry5To6),
	.a(A[6]),
	.b(B[6]),
	.co(Carry6To7),
	.s(S_ALTERA_SYNTHESIZED[6]));


OneBitAdder	b2v_bit07(
	.ci(Carry6To7),
	.a(A[7]),
	.b(B[7]),
	.co(Carry7To8),
	.s(S_ALTERA_SYNTHESIZED[7]));


OneBitAdder	b2v_bit08(
	.ci(Carry7To8),
	.a(A[8]),
	.b(B[8]),
	.co(Carry8To9),
	.s(S_ALTERA_SYNTHESIZED[8]));


OneBitAdder	b2v_bit09(
	.ci(Carry8To9),
	.a(A[9]),
	.b(B[9]),
	.co(Carry9To10),
	.s(S_ALTERA_SYNTHESIZED[9]));


OneBitAdder	b2v_bit10(
	.ci(Carry9To10),
	.a(A[10]),
	.b(B[10]),
	.co(Carry10To11),
	.s(S_ALTERA_SYNTHESIZED[10]));


OneBitAdder	b2v_bit11(
	.ci(Carry10To11),
	.a(A[11]),
	.b(B[11]),
	.co(Carry11To12),
	.s(S_ALTERA_SYNTHESIZED[11]));


OneBitAdder	b2v_bit12(
	.ci(Carry11To12),
	.a(A[12]),
	.b(B[12]),
	.co(Carry12To13),
	.s(S_ALTERA_SYNTHESIZED[12]));


OneBitAdder	b2v_bit13(
	.ci(Carry12To13),
	.a(A[13]),
	.b(B[13]),
	.co(Carry13To14),
	.s(S_ALTERA_SYNTHESIZED[13]));


OneBitAdder	b2v_bit14(
	.ci(Carry13To14),
	.a(A[14]),
	.b(B[14]),
	.co(Carry14To15),
	.s(S_ALTERA_SYNTHESIZED[14]));


OneBitAdder	b2v_bit15(
	.ci(Carry14To15),
	.a(A[15]),
	.b(B[15]),
	.co(Carry15To16),
	.s(S_ALTERA_SYNTHESIZED[15]));


OneBitAdder	b2v_bit16(
	.ci(Carry15To16),
	.a(A[16]),
	.b(B[16]),
	.co(Carry16To17),
	.s(S_ALTERA_SYNTHESIZED[16]));


OneBitAdder	b2v_bit17(
	.ci(Carry16To17),
	.a(A[17]),
	.b(B[17]),
	.co(Carry17To18),
	.s(S_ALTERA_SYNTHESIZED[17]));


OneBitAdder	b2v_bit18(
	.ci(Carry17To18),
	.a(A[18]),
	.b(B[18]),
	.co(Carry18To19),
	.s(S_ALTERA_SYNTHESIZED[18]));


OneBitAdder	b2v_bit19(
	.ci(Carry18To19),
	.a(A[19]),
	.b(B[19]),
	.co(Carry19To20),
	.s(S_ALTERA_SYNTHESIZED[19]));


OneBitAdder	b2v_bit20(
	.ci(Carry19To20),
	.a(A[20]),
	.b(B[20]),
	.co(Carry20To21),
	.s(S_ALTERA_SYNTHESIZED[20]));


OneBitAdder	b2v_bit21(
	.ci(Carry20To21),
	.a(A[21]),
	.b(B[21]),
	.co(Carry21To22),
	.s(S_ALTERA_SYNTHESIZED[21]));


OneBitAdder	b2v_bit22(
	.ci(Carry21To22),
	.a(A[22]),
	.b(B[22]),
	.co(Carry22To23),
	.s(S_ALTERA_SYNTHESIZED[22]));


OneBitAdder	b2v_bit23(
	.ci(Carry22To23),
	.a(A[23]),
	.b(B[23]),
	.co(Carry23To24),
	.s(S_ALTERA_SYNTHESIZED[23]));


OneBitAdder	b2v_bit24(
	.ci(Carry23To24),
	.a(A[24]),
	.b(B[24]),
	.co(Carry24To25),
	.s(S_ALTERA_SYNTHESIZED[24]));


OneBitAdder	b2v_bit25(
	.ci(Carry24To25),
	.a(A[25]),
	.b(B[25]),
	.co(Carry25To26),
	.s(S_ALTERA_SYNTHESIZED[25]));


OneBitAdder	b2v_bit26(
	.ci(Carry25To26),
	.a(A[26]),
	.b(B[26]),
	.co(Carry26To27),
	.s(S_ALTERA_SYNTHESIZED[26]));


OneBitAdder	b2v_bit27(
	.ci(Carry26To27),
	.a(A[27]),
	.b(B[27]),
	.co(Carry27To28),
	.s(S_ALTERA_SYNTHESIZED[27]));


OneBitAdder	b2v_bit28(
	.ci(Carry27To28),
	.a(A[28]),
	.b(B[28]),
	.co(Carry28To29),
	.s(S_ALTERA_SYNTHESIZED[28]));


OneBitAdder	b2v_bit29(
	.ci(Carry28To29),
	.a(A[29]),
	.b(B[29]),
	.co(Carry29To30),
	.s(S_ALTERA_SYNTHESIZED[29]));


OneBitAdder	b2v_bit30(
	.ci(Carry29To30),
	.a(A[30]),
	.b(B[30]),
	.co(Carry30To31),
	.s(S_ALTERA_SYNTHESIZED[30]));


OneBitAdder	b2v_bit31(
	.ci(Carry30To31),
	.a(A[31]),
	.b(B[31]),
	
	.s(S_ALTERA_SYNTHESIZED[31]));


OverflowDetection	b2v_myOverflow(
	.A(A[31]),
	.B(B[31]),
	.Result(S_ALTERA_SYNTHESIZED[31]),
	.Overflow(Overflow));

assign	S = S_ALTERA_SYNTHESIZED;

endmodule
