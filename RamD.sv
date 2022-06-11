module RamD(input	[31:0] address,
					input clock,
					input	[31:0] data,
					input wren,
					output [31:0] q);
					
					
	logic [31:0] ram [327:0];
	logic [31:0] out_aux;
	

	
	initial 
	
		$readmemb("frase.dat",ram);
		
		
		
		
	always_ff @ (posedge clock) begin
		
			if(wren)
				ram[address] <= data;
			else
				out_aux = ram[address];
				
	
	end	
	
	
	

		
	
	
	assign q = out_aux;

	endmodule
	