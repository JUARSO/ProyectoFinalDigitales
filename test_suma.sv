module test_suma();

	logic [31:0] pc_Out;
	logic [31:0] pc_Int;


	sum_pc sumPC(pc_Int,32'b100,pc_Out);
	
	
	
	initial begin
		pc_Int = 32'd0;
		#10;
		pc_Int = 32'd4;
		#10;
		pc_Int = 32'd8;
		#10;
		
	end

endmodule 