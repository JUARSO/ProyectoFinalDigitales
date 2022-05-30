module muxARM #(parameter WIDTH = 8)
				(input logic [WIDTH-1:0] d0, d1,
				input logic select,
				output logic [WIDTH-1:0] y);
				
	assign y = select ? d1 : d0;
endmodule
