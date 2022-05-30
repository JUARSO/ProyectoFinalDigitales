module testMUX();

logic [31:0] pc1;
logic [31:0] pc2;
logic s;
logic [31:0] Out;

muxARM #(32) mux2(pc1,pc2,s,Out);



initial begin
	
	pc1=32'd4;
	pc2=32'd8;
	#10
	s=0;
	#15;
	s=1;
	#15;

end

endmodule
