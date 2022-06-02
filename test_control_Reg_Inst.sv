module test_control_Reg_Inst();

logic clk,reset;


control_Reg_Inst CRI(clk,reset);

initial begin


	 reset=0;
	 #10;
	  reset=1;
	 #10;
	 reset=0;
	#10;
end



	always
begin
clk <= 1; # 5; clk <= 0; # 5;
end

endmodule 