module RamD(input	[31:0] address,
					input clock,
					input	[31:0] data,
					input wren,
					output [31:0] q,
					output [31:0] ram_Out [327:0]);
					
					
	logic [31:0] ram [327:0];
	logic [31:0] out_aux;
	

	
	initial 
	
		$readmemb("frase.dat",ram);
		
		
		
		
	always_ff @ (posedge clock) begin
		
			if(wren)
				ram[address] <= out_aux;
			else
				out_aux = ram[address];
				
//			$display("%b",ram[address]);
				
	
	end	
	
	
	

		
	
	
	assign q = out_aux;
	assign ram_Out = ram;

	endmodule
	