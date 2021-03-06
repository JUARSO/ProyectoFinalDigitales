module control_Reg_Inst(input logic clk,reset, resetVGA,
    output logic [7:0] R,
   output logic [7:0] G,
   output logic [7:0] B,
   output logic hsync,
   output logic vsync,
   output logic vgaclk
);

logic [3:0] ALUFlags;
logic [1:0] RegSrc;
logic RegWrite;
logic [1:0] ImmSrc;
logic ALUSrc;
logic [3:0] ALUControl;
logic MemWrite, MemtoReg;
logic PCSrc;
logic [31:0] Aluresult;
logic [31:0] result;
logic [31:0] SrcA, SrcB;
logic [31:0] WriteData;
logic [31:0] Instr;
logic [7:0] ReadData;
logic [7:0] ram [64:0];
//logic [31:0] ReadDataAux;


unidadControl unitC(clk, reset,
							Instr[31:12],
							ALUFlags,
						RegSrc,
						RegWrite,
						ImmSrc,
						ALUSrc,
						ALUControl,
						MemWrite, MemtoReg,
						PCSrc);
						
Instuction_Register mIR(clk, reset,PCSrc,
									result,
									RegSrc,
									RegWrite,
									ImmSrc,
									ALUSrc,
									SrcA, SrcB,
									WriteData,
									Instr);
									
ALU #(32) aluCPU(SrcA, SrcB, ALUControl, Aluresult, ALUFlags[3], ALUFlags[2], ALUFlags[1], ALUFlags[0]);

//dataMemory dm(clk, MemWrite,Aluresult,WriteData,result);

//RAM Ram(Aluresult[7:0], clk, WriteData, MemWrite, ReadData);

RamD Ram(Aluresult[7:0], clk, WriteData, MemWrite, ReadData,ram[64:0]);

muxARM #(32) muxALUDATA(Aluresult,{24'b0, ReadData},MemtoReg,result);
/*

VGA VGA_Controller(
        .clk(clk),
		  .reset(resetVGA),
//        .display(display),
       .ram(ram),
        .Red(R), 
        .Green(G), 
        .Blue(B), 
        .hsync(hsync), 
        .vsync(vsync), 
        .vgaclk(vgaclk)
        );
	*/	 
	
 //pruebaConexionRam pb(ram);

always @(*)

		$display("%p",ram);
		
endmodule
