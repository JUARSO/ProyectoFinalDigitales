module Multiplexor #(parameter ancho = 32) (entradaSuma, entradaResta, entradaMultiplicacion, entradaDivision, entradaModulo, 
						entradaAND, entradaOR, entradaXOR, entradaShiftLeft, entradaShiftRight, entradaMov, seleccion, salida);
		
	input [ancho-1:0] entradaSuma;
	input [ancho-1:0] entradaResta;
	input [ancho-1:0] entradaMultiplicacion;
	input [ancho-1:0] entradaDivision;
	input [ancho-1:0] entradaModulo;
	input [ancho-1:0] entradaAND;
	input [ancho-1:0] entradaOR;
	input [ancho-1:0] entradaXOR;
	input [ancho-1:0] entradaShiftLeft;
	input [ancho-1:0] entradaShiftRight;
	input [ancho-1:0] entradaMov;	
	input [3:0] seleccion;
	output logic [ancho-1:0] salida;
	
	always @(entradaSuma, entradaResta, entradaMultiplicacion, entradaDivision, entradaModulo, 
				entradaAND, entradaOR, entradaXOR, entradaShiftLeft, entradaShiftRight, entradaMov, seleccion) begin
		case (seleccion)
			4'b0000: salida = entradaSuma;
			4'b0001: salida = entradaResta;
			4'b0010: salida = entradaMultiplicacion;
			4'b0011: salida = entradaDivision;
			4'b0100: salida = entradaModulo;
			4'b0101: salida = entradaAND;
			4'b0110: salida = entradaOR;
			4'b0111: salida = entradaXOR;
			4'b1000: salida = entradaShiftLeft;
			4'b1001: salida = entradaShiftRight;
			4'b1010: salida = entradaMov;
			default: salida = 32'b0;
		endcase
	end

endmodule 