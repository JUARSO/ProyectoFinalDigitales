module test_moduloInstrucciones();


	
	logic clk, reset;
	logic [31:0] dataOut;
	
	
	modulo_instrucciones modInst(clk, reset,dataOut);
	
	initial begin 
		#10;
		clk = 0;
		reset = 0;
		#10;
		reset = 1;
		#10;
		reset = 0;
		#10;
		clk=~clk;
		#10;
		clk=~clk;
		#10;
		clk = 0;
		#10;
		clk=~clk;
		#10;
		clk=~clk;
		#10;
		clk=~clk;
		#10;clk=~clk;
		#10;
		clk=~clk;
		#10;
		clk=~clk;
		#10;
		clk=~clk;
		#10;
		clk=~clk;
		#10;
		clk=~clk;
		#10;
		clk=~clk;
		#10;
		clk=~clk;
		#10;
		clk=~clk;
		#10;
		
	end
	

	
	endmodule 