module modulo_PC(input logic clk, reset,PCSrc,input [31:0] result,output logic[31:0] pc);

	logic [31:0] pc_next;
	logic [31:0] pc_4;
	

	muxARM #(32) pcmux(pc_4,result,PCSrc,pc_next);
	clk_pc #(32)  clkPc(clk, reset,pc_next,pc);
	sum_pc #(32) sumPC(pc,32'b100,pc_4);
	
	endmodule
	