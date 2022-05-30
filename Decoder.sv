module Decoder(input clk, input [31:0] instruction, input reset,
					output useMemory,
					output wMemory,
					output [3:0] rd,
					output [3:0] rs,
					output [3:0] rm,
					output [3:0] funct,
					output [23:0] inm);

	//( ){ }[ ]
	
	logic useMemory_aux;
	logic wMemory_aux;
	logic [3:0] rd_aux;
	logic [3:0] rs_aux;
	logic [3:0] rm_aux;
	logic [3:0] funct_aux;
	logic [23:0] inm_aux;
	
	
	
	always_ff @(posedge clk or posedge reset) begin
	
		if(reset) begin
			useMemory_aux=0;
			wMemory_aux=0;
			rd_aux=0;
			rs_aux=0;
			rm_aux=0;
			funct_aux=0;
			inm_aux=0;
		end
		
		else begin
		
			case(instruction[27:26])
			
				2'b00:
					if(instruction[25]) begin
						useMemory_aux=0;
						wMemory_aux=0;
						rd_aux=instruction[15:12];
						rs_aux=instruction[19:16];
						rm_aux=0;
						inm_aux=instruction[7:0];
						funct_aux=instruction[24:21];
					end
					else begin
						useMemory_aux=0;
						wMemory_aux=0;
						rd_aux=instruction[15:12];
						rs_aux=instruction[19:16];
						rm_aux=instruction[3:0];
						inm_aux=0;
						funct_aux=instruction[24:21];
					end
				2'b01:
					if(instruction[25]) begin
						if(instruction[21])
							wMemory_aux=0;
						else
							wMemory_aux=1;
						if(!instruction[25])
							inm_aux=instruction[11:0];
						else
							inm_aux=0;
						useMemory_aux=1;
						rd_aux=instruction[15:12];
						rs_aux=instruction[19:16];
						rm_aux=0;
						funct_aux=0;
					end
					else begin
						if(instruction[21])
							wMemory_aux=0;
						else
							wMemory_aux=1;
						if(!instruction[25])
							inm_aux=instruction[11:0];
						else
							inm_aux=0;
						useMemory_aux=1;
						rd_aux=instruction[15:12];
						rs_aux=instruction[19:16];
						rm_aux=instruction[3:0];
						funct_aux=0;
					end
				2'b10:
					begin
						useMemory_aux=0;
						wMemory_aux=0;
						rd_aux=0;
						rs_aux=0;
						rm_aux=0;
						funct_aux=0;
						inm_aux=instruction[23:0];
					end
					default: begin
						useMemory_aux=0;
						wMemory_aux=0;
						rd_aux=0;
						rs_aux=0;
						rm_aux=0;
						funct_aux=0;
						inm_aux=0;
					end
			
			endcase
			
		end
	
	
	
	end
	
	assign useMemory = useMemory_aux;
	assign wMemory = wMemory_aux;
	assign rd = rd_aux;
	assign rs = rs_aux;
	assign rm = rm_aux;
	assign inm = inm_aux;
	assign funct = funct_aux;
	
	
endmodule
