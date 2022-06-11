`timescale 1 ns / 1 ns


module test_control_Reg_Inst();

logic clk,reset;


control_Reg_Inst CRI(clk,reset);

initial begin


	 reset=0;
	 #15;
	  reset=1;
	 #15;
	 reset=0;
	 #15;
	
end



	always
begin
clk <= 1; # 10; clk <= 0; # 10;
end

endmodule 

//vsim -L altera_mf_ver -L lpm_ver test_control_Reg_Inst