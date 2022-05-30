module instructionMemory(
	input [31:0] pc,
	input clk,
	output [31:0] dataOut);
	
	//( ){ }[ ]
	
	logic [7:0] ram [15:0];
	logic [31:0] outAux;
	
	initial 
	
		$readmemh("Bin.dat",ram);
		
		
	always @ (posedge clk)
		
		begin 
			outAux = {ram[pc], ram[pc+1], ram[pc+2], ram[pc+3]};
		end
	
	assign dataOut = outAux;
	
	endmodule
	