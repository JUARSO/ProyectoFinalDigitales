module test_moduloInstrucciones();


	
	logic clk, reset, PCSrc;
	logic [31:0] dataOut, result, pc_8;
	
	
	modulo_instrucciones modInst(clk, reset, PCSrc, result, dataOut, pc_8);
	
	initial begin 
		result = 32'd10;
		PCSrc = 0;
		#1;
		reset = 0;
		#1;
		reset = 1;
		#1;
		reset = 0;
		#1;
		
		
	
		
	end
always
begin
clk <= 1; # 2; clk <= 0; # 2;
end
	
	endmodule 