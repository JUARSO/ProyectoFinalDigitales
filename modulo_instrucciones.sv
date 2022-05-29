module modulo_instrucciones(input clk, input reset, output [31:0] dataOut);

	logic [31:0] pc;
	

	
	modulo_PC modPC(clk, reset,pc);

	instructionMemory intMem(pc, clk, dataOut);
	
	
	
endmodule
