module Restador #(parameter ancho = 32) (operandoA, operandoB, resultado, borrowOut);
	input [ancho-1:0] operandoA;
	input [ancho-1:0] operandoB;
	output [ancho-1:0] resultado;
	output borrowOut;
	assign {borrowOut, resultado} = operandoA - operandoB;
endmodule 