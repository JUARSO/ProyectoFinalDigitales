//`timescale 1 ns / 1 ns


module RAM_Test();


logic [31:0] Addr;
	logic [31:0] q, data;
	logic clk, wren;
	logic [31:0] ram [327:0];
	
	RamD Ram(Addr, clk, data, wren, q,ram);

always begin
			clk = 0; # 2; clk = 1; # 2;
end
	 
	
	
	initial begin

	wren = 0;
	data = 0;
	
	Addr = 32'h0;
	#5;
	Addr = 32'h3;
	#5;
	Addr = 32'h9;
	#5;
	Addr = 32'h11;
	#5;
	

	end

endmodule 

//vsim -L altera_mf_ver -L lpm_ver RAM_Test