module decode(input logic [1:0] Op,
input logic [5:0] Funct,
input logic [3:0] Rd,
output logic [1:0] FlagW,
output logic PCS, RegW, MemW,
output logic MemtoReg, ALUSrc,
output logic [1:0] ImmSrc, RegSrc,
output logic [3:0] ALUControl,
output logic NoWrite);

logic [9:0] controls;
logic Branch, ALUOp;

	always_comb
		casex(Op)

		2'b00: if (Funct[5]) controls = 10'b0000101001;

				else controls = 10'b0000001001;
		
		2'b01: if (Funct[0]) controls = 10'b0001111000;

				else controls = 10'b1001110100;

		2'b10: controls = 10'b0110100010;

		default: controls = 10'bx;
		
		endcase
	assign {RegSrc, ImmSrc, ALUSrc, MemtoReg,
	RegW, MemW, Branch, ALUOp} = controls;
		
	always_comb
		if (ALUOp) begin 
			case(Funct[4:1])
			4'b0100: ALUControl = 4'b0000; // ADD
			4'b0010: ALUControl = 4'b0001; //SUB
			4'b0000: ALUControl = 4'b0101; //AND
			4'b1100: ALUControl = 4'b0110; //ORR
			4'b1010: if (Funct[0]) ALUControl = 4'b0001; //CMP
							else ALUControl = 4'bx;
			4'b1101: ALUControl = 4'b1010; // MOV
			default: ALUControl = 4'bx; 
			endcase
	
		FlagW[1] = Funct[0];
		FlagW[0] = Funct[0] &
		(ALUControl == 4'b0000 | ALUControl == 4'b0001);
		
		NoWrite = (Funct[4:1] == 4'b1010); //CMP Flag
		end else begin
		
		ALUControl = 4'b0000; 
		FlagW = 2'b00;
		NoWrite = 1'b0; //CMP Flag	
		
		end
	assign PCS = ((Rd == 4'b1111) & RegW) | Branch;
	
endmodule

