module test_cpu();

logic clk,reset,play;


cpu cpuTest(play, clk, reset);

initial begin


	 reset=0;
	 play=0;
	 #15;
	  reset=1;
	 #15;
	 reset=0;
	 #15;
	 play=1;
	 #15;
	
end



always
begin
	clk <= 1; # 10; clk <= 0; # 10;
end


endmodule 