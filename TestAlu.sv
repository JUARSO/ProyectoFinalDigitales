module TestAlu();

logic [32-1:0] operandoA, operandoB, resultado;

logic [3:0] seleccion;

logic N, Z, C, V;

ALU #(32) aluProyect(operandoA, operandoB, seleccion, resultado, N, Z, C, V);

initial begin


	operandoA = 32'd30;
	operandoB = 32'd60;
	seleccion = 4'd0;
	#30;
	operandoA = 32'd30;
	operandoB = 32'd60;
	seleccion = 4'd1;

	#30;
	operandoA = 32'd50;
	operandoB = 32'd30;
	seleccion = 4'd1;
	#30;
end

endmodule
