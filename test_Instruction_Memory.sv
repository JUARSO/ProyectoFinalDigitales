module test_Instruction_Memory();
	
	reg [31:0] pc;
	reg clk;
	reg [31:0] dataOut;
	
	
	instructionMemory intMem(pc, clk, dataOut);
	
	initial begin 
		clk = 0;
		#10;
		pc = 32'd0;
		
	end
	
	always begin
	
		clk=~clk;
		#5;
	end
	
	endmodule 