module modulo_instrucciones(input clk, input reset,PCSrc, input [31:0] result,output [31:0] dataOut,output [31:0] pc_8);

	logic [31:0] pc;
	
	

	
	modulo_PC modPC(clk, reset,PCSrc,result,pc);

	instructionMemory intMem(pc, clk, dataOut);
	
	sum_pc #(32) sumPC(pc,32'd8,pc_8);

	
	
endmodule
