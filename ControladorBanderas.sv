module ControladorBanderas  #(parameter ancho = 32) (carryOut, borrowOut, overflow, resultado, seleccion, N, Z, C, V);
	input carryOut;
	input borrowOut;
	input overflow;
	input [ancho-1:0] resultado;
	input [3:0] seleccion;
	
	output logic N;
	output logic Z;
	output logic C;
	output logic V;
	
	always @(seleccion, resultado) begin
		case (seleccion)
			4'b0000: begin
							N = 0;
							if (resultado == 0)
								Z = 1;
							else
								Z = 0;
							C = carryOut;
							V = 0;
						end
						
			4'b0001: begin
							N = borrowOut;
							if (resultado == 0)
								Z = 1;
							else
								Z = 0;
							C = 0;
							V = 0;
						end
			
			4'b0010: begin
							N = 0;
							if (resultado == 0)
								Z = 1;
							else
								Z = 0;
							C = 0;
							V = overflow;
						end
						
			4'b0011: begin
							N = 0;
							if (resultado == 0)
								Z = 1;
							else
								Z = 0;
							C = 0;
							V = 0;
						end
						
			4'b0100: begin
							N = 0;
							if (resultado == 0)
								Z = 1;
							else
								Z = 0;
							C = 0;
							V = 0;
						end
						
			4'b0101: begin
							N = 0;
							if (resultado == 0)
								Z = 1;
							else
								Z = 0;
							C = 0;
							V = 0;
						end
						
			4'b0110: begin
							N = 0;
							if (resultado == 0)
								Z = 1;
							else
								Z = 0;
							C = 0;
							V = 0;
						end
						
			4'b0111: begin
							N = 0;
							if (resultado == 0)
								Z = 1;
							else
								Z = 0;
							C = 0;
							V = 0;
						end
						
			4'b1000: begin
							N = 0;
							if (resultado == 0)
								Z = 1;
							else
								Z = 0;
							C = 0;
							V = 0;
						end
						
			4'b1001: begin
							N = 0;
							if (resultado == 0)
								Z = 1;
							else
								Z = 0;
							C = 0;
							V = 0;
						end
			
			4'b1010: begin
							N = 0;
							if (resultado == 0)
								Z = 1;
							else
								Z = 0;
							C = 0;
							V = 0;
						end
			
			default: begin
							N = 0;
							if (resultado == 0)
								Z = 1;
							else
								Z = 0;
							C = carryOut;
							V = 0;
						end
		endcase
	end
	
endmodule