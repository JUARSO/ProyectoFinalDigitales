module test_moduloPC();

logic[31:0] pc;
logic clk, reset;
logic PCSrc;
logic [31:0] result;

modulo_PC mPC(clk, reset, PCSrc, result, pc);

initial begin 

		result= 32'd30;
		PCSrc =0;
		#10;
		clk = 0;
		reset = 0;
		
		#10;
		reset = 1;
		#10;
		reset = 0;
		#10;
		PCSrc =1;
		#10;
		clk=~clk;
		#10;
		clk=~clk;
		#10;
		clk=~clk;
		#10;clk=~clk;
		#10;
		PCSrc =0;
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
