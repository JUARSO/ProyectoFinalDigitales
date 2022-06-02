module Instuction_Register(input clk, input reset,PCSrc,
									input [31:0] result,
									input [1:0] RegSrc,
									input RegWrite,
									input [1:0] ImmSrc,
									input ALUSrc,
									output logic [31:0] SrcA, SrcB,
									output logic [31:0] WriteData,
									output logic [31:0] Instr);


	
	
	logic [31:0] pc_8;
	
	logic [3:0] RA1, RA2;
	
	logic [31:0] ExtImm;


	modulo_instrucciones mI(clk,reset,PCSrc, result, Instr,pc_8);
	
	// register file logic
	muxARM #(4) ra1mux(Instr[19:16], 4'b1111, RegSrc[0], RA1);
	
	muxARM #(4) ra2mux(Instr[3:0], Instr[15:12], RegSrc[1], RA2);
	
	regfile rf(clk, RegWrite, RA1, RA2,
	Instr[15:12], result, pc_8,
	SrcA, WriteData);
	
	extend ext(Instr[23:0], ImmSrc, ExtImm);
	
	muxARM #(32) srcbmux(WriteData, ExtImm, ALUSrc, SrcB);
	
	endmodule
	