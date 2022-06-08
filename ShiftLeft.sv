module ShiftLeft #(parameter ancho = 4) (operandoA, operandoB, resultado);
	input [ancho-1:0] operandoA;
	input [ancho-1:0] operandoB;
	output [ancho-1:0] resultado;
	
	assign resultado = operandoA << operandoB;
	
endmodule 