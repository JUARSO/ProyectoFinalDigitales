module control_Reg_Inst(input logic clk,reset);

logic [3:0] ALUFlags=4'd0;
logic [1:0] RegSrc;
logic RegWrite;
logic [1:0] ImmSrc;
logic ALUSrc;
logic [1:0] ALUControl;
logic MemWrite, MemtoReg;
logic PCSrc;
logic [31:0] result=32'd30;
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
									result,
									RegSrc,
									RegWrite,
									ImmSrc,
									ALUSrc,
									SrcA, SrcB,
									WriteData,
									Instr);
									
endmodule
