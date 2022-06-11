module VGA(
	input logic clk,
	output logic [31:0] ram [327:0],
	output logic [7:0] Red,
	output logic [7:0] Blue,
	output logic [7:0] Green,
	output logic hsync, 
	output logic vsync, 
	output logic vgaclk
	
	);
	
	assign sync=1'b0;
	
	Clock clock(clk, clk2);
	SyncPantalla syncPantalla(
		.VGA_CLK_IN(clk2), 
		.o_hsync(hsync), 
		.o_vsync(vsync), 
		.VGA_CLK_OUT(vgaclk),
		.out_R(Red),
		.out_B(Blue),
		.out_G(Green),
		.displayAsquiiAux(ram)
		);
		
		
endmodule 