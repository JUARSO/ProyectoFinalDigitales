module Mov #(parameter ancho = 32) (operandoB, resultado);
	
	input [ancho-1:0] operandoB;
	output [ancho-1:0] resultado;
	assign resultado = operandoB;
endmodule 