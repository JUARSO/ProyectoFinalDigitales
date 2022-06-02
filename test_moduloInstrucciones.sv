module test_moduloInstrucciones();


	
	logic clk, reset, PCSrc;
	logic [31:0] dataOut, result, pc_8;
	
	
	modulo_instrucciones modInst(clk, reset, PCSrc, result, dataOut, pc_8);
	
	initial begin 
		result = 32'd10;
		PCSrc = 0;
		#10;
		clk = 0;
		reset = 0;
		#10;
		reset = 1;
		#10;
		reset = 0;
		#10;
	
		
	end
always
begin
clk <= 1; # 5; clk <= 0; # 5;
end
	
	endmodule 