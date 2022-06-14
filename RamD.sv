module RamD(input	logic [7:0] address,
					input logic clock,
					input logic	[31:0] data,
					input logic wren,
					output logic [7:0] q,
					output logic [7:0] ram_Out [64:0]);
					
					
	logic [7:0] ram [327:0];
	//logic [7:0] out_aux;
	

	
	initial 
	
		$readmemb("frase.dat",ram);
		
		
		
	assign q = ram[address];
	assign ram_Out = ram[64:0];
	
	always @(*)
    
		$writememb("DatosVga.dat",ram);
	
		
	always_ff @ (posedge clock) begin
		
			if(wren)
				ram[address] <= data;
			
			

				
	
	end	
	
	
	

		
	
	
	

	endmodule
	