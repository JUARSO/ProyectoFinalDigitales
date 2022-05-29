module test_moduloPC();

logic[31:0] pc;
logic clk, reset;

modulo_PC mPC(clk, reset, pc);

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
