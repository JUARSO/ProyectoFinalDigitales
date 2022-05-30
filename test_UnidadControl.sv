module test_UnidadControl();

logic clk;
logic reset;
logic [31:0] Instr;
logic [3:0] ALUFlags;

logic [1:0] RegSrc;
logic RegWrite;
logic [1:0] ImmSrc;
logic ALUSrc;
logic [1:0] ALUControl;
logic MemWrite;
logic MemtoReg;
logic PCSrc;

unidadControl UC( clk, 
						 reset,
						 Instr[31:12],
						 ALUFlags[3:0],
						 RegSrc[1:0],
						 RegWrite,
						 ImmSrc[1:0],
						 ALUSrc,
						 ALUControl[1:0],
						 MemWrite, 
						 MemtoReg,
						 PCSrc);
						 
						 
initial begin
	reset = 0;
	#10;
	Instr=32'hE0865007;
	#10;

end
always
begin
clk <= 1; # 5; clk <= 0; # 5;
end

endmodule
