module ALU #(parameter ancho = 32) (operandoA, operandoB, seleccion, resultado, N, Z, C, V);
	input [ancho-1:0] operandoA;
	input [ancho-1:0] operandoB;
	input [3:0] seleccion;
	
	output [ancho-1:0] resultado;
	output N;
	output Z;
	output C;
	output V;
			
	wire [ancho-1:0] resultadoSuma;
	wire [ancho-1:0] resultadoResta;
	wire [ancho-1:0] resultadoMultiplicacion;
	wire [ancho-1:0] resultadoDivision;
	wire [ancho-1:0] resultadoModulo;
	wire [ancho-1:0] resultadoAND;
	wire [ancho-1:0] resultadoOR;
	wire [ancho-1:0] resultadoXOR;
	wire [ancho-1:0] resultadoShiftLeft;
	wire [ancho-1:0] resultadoShiftRight;
	wire [ancho-1:0] resultadoMov;
	
	wire resultadoCarryOut;
	wire resultadoBorrowOut;
	wire resultadoOverflow;
	
	Sumador #(ancho) sumadorALU(
		.operandoA(operandoA),
		.operandoB(operandoB),
		.resultado(resultadoSuma),
		.carryOut(resultadoCarryOut)
	);
	
	Restador #(ancho) restadorALU(
		.operandoA(operandoA),
		.operandoB(operandoB),
		.resultado(resultadoResta),
		.borrowOut(resultadoBorrowOut)
	);
	
	Multiplicador #(ancho) multiplicadorALU(
		.operandoA(operandoA),
		.operandoB(operandoB),
		.resultado(resultadoMultiplicacion),
		.carryOut(resultadoOverflow)
	);
	
	Divisor #(ancho) divisorALU(
		.operandoA(operandoA),
		.operandoB(operandoB),
		.resultado(resultadoDivision)
	);
	
	Modulador #(ancho) moduladorALU(
		.operandoA(operandoA),
		.operandoB(operandoB),
		.resultado(resultadoModulo)
	);
	
	CompuertaAND #(ancho) andALU(
		.operandoA(operandoA),
		.operandoB(operandoB),
		.resultado(resultadoAND)
	);
	
	CompuertaOR #(ancho) orALU(
		.operandoA(operandoA),
		.operandoB(operandoB),
		.resultado(resultadoOR)
	);
	
	CompuertaXOR #(ancho) xorALU(
		.operandoA(operandoA),
		.operandoB(operandoB),
		.resultado(resultadoXOR)
	);
	
	ShiftLeft #(ancho) shiftLeftALU(
		.operandoA(operandoA),
		.operandoB(operandoB),
		.resultado(resultadoShiftLeft)
	);
	
	ShiftRight #(ancho) shiftRightALU(
		.operandoA(operandoA),
		.operandoB(operandoB),
		.resultado(resultadoShiftRight)
	);
	
	Mov #(ancho) MovALU(
		.operandoB(operandoB),
		.resultado(resultadoMov)
	);
	
	Multiplexor #(ancho) multiplexorALU(
		.entradaSuma(resultadoSuma),
		.entradaResta(resultadoResta),
		.entradaMultiplicacion(resultadoMultiplicacion),
		.entradaDivision(resultadoDivision),
		.entradaModulo(resultadoModulo),
		.entradaAND(resultadoAND),
		.entradaOR(resultadoOR),
		.entradaXOR(resultadoXOR),
		.entradaShiftLeft(resultadoShiftLeft),
		.entradaShiftRight(resultadoShiftRight),
		.entradaMov(resultadoMov),
		.seleccion(seleccion),
		.salida(resultado)
	);
	
	ControladorBanderas #(ancho) controladorBanderas(
		.carryOut(resultadoCarryOut),
		.borrowOut(resultadoBorrowOut),
		.overflow(resultadoOverflow),
		.resultado(resultado),
		.seleccion(seleccion),
		.N(N),
		.Z(Z),
		.C(C),
		.V(V)
	);

	
endmodule 