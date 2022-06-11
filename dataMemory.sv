module dataMemory(
	input clk, we,
	input [31:0] a,wd,
	output [31:0] rd);
	
	//( ){ }[ ]
	
	logic [7:0] ram [220:0];
	logic [31:0] outAux;
	
	initial 
	
		$readmemh("dataRom.mif",ram);
	
	assign rd = ram[a[31:2]];
		
	always_ff @(posedge clk)
	
	if (we) ram[a[31:2]] <= wd;
	
	endmodule
	