module instructionMemory(
	input [31:0] pc,
	input clk,
	output [31:0] dataOut);
	
	//( ){ }[ ]
	
	logic [7:0] ram [327:0];
	logic [31:0] outAux;
	
	initial 
	
		$readmemh("BinarioV2.dat",ram);
		
		
	
		
		
	assign dataOut  = {ram[pc], ram[pc+1], ram[pc+2], ram[pc+3]};
	
	
	
	
	endmodule