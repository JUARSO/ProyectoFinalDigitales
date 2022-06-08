module Multiplicador #(parameter ancho = 4) (operandoA, operandoB, resultado, carryOut);
	input [ancho-1:0] operandoA;
	input [ancho-1:0] operandoB;
	output [ancho-1:0] resultado;
	output carryOut;
	assign {carryOut, resultado} = operandoA * operandoB;
endmodule 