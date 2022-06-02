module test_Instuction_Register();


logic clk,reset,PCSrc;
logic [31:0] result;
logic [1:0] RegSrc;
logic RegWrite;
logic [1:0] ImmSrc;
logic ALUSrc;
logic [31:0] SrcA, SrcB;
logic [31:0] WriteData;



Instuction_Register IReg(clk, reset,PCSrc,
									result,
									RegSrc,
									RegWrite,
									ImmSrc,
									ALUSrc,
									SrcA, SrcB,
									WriteData);
									
initial begin

	reset=0;
	#10;
	reset = 1;
	#10;
	reset = 0;
	#10;
	PCSrc=0;
	#10;
	result=32'd6;
	#10;
	RegSrc=2'd0;
	#10;
	RegWrite=1;
	#10;
	ImmSrc=2'd0;
	#10;
	ALUSrc=0;
	#10;
	PCSrc=1;
	#10;
	PCSrc=0;
	#10;
end
	always
begin
clk <= 1; # 5; clk <= 0; # 5;
end
	
endmodule
