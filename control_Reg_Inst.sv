module control_Reg_Inst(input logic clk,reset);

logic [3:0] ALUFlags;
logic [1:0] RegSrc;
logic RegWrite;
logic [1:0] ImmSrc;
logic ALUSrc;
logic [3:0] ALUControl;
logic MemWrite, MemtoReg;
logic PCSrc;
logic [31:0] Aluresult;
logic [31:0] SrcA, SrcB;
logic [31:0] WriteData;
logic [31:0] Instr;


unidadControl unitC(clk, reset,
							Instr[31:12],
							ALUFlags,
						RegSrc,
						RegWrite,
						ImmSrc,
						ALUSrc,
						ALUControl,
						MemWrite, MemtoReg,
						PCSrc);
						
Instuction_Register mIR(clk, reset,PCSrc,
									Aluresult,
									RegSrc,
									RegWrite,
									ImmSrc,
									ALUSrc,
									SrcA, SrcB,
									WriteData,
									Instr);
									
ALU #(32) aluCPU(SrcA, SrcB, ALUControl, Aluresult, ALUFlags[3], ALUFlags[2], ALUFlags[1], ALUFlags[0]);
									
endmodule
