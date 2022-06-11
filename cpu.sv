module cpu(input logic play, clk, reset);

logic clk_aux;

control_Reg_Inst CRI(clk_aux,reset);

initial begin
	
	if(play==1'b1)
		clk_aux = clk;
	

end


endmodule
