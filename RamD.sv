module RamD(input	[7:0] address,
					input clock,
					input	[31:0] data,
					input wren,
					output [7:0] q,
					output [7:0] ram_Out [64:0]);
					
					
	logic [7:0] ram [327:0];
	logic [7:0] out_aux;
	

	
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
	assign ram_Out = ram[64:0];

	endmodule
	