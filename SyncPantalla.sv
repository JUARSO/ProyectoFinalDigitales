`define WHITE 24'hFFFFFF
`define BLACK 24'h000000
`define RED 24'hD10E49
`define BLUE 24'h0000FF


module SyncPantalla(
	input logic VGA_CLK_IN,reset,
	input logic [7:0] ram [64:0],
//	input  reg  [7:0] display,
	output logic VGA_CLK_OUT,
	output logic o_hsync,
	output logic o_vsync,
	output logic[7:0] out_R,
	output logic[7:0] out_B,
	output logic[7:0] out_G
);

	wire [7:0] displayA [64:0] = ram;

	
	



	//Contadores para coordenadas
	reg[9:0] X0=0;
	reg[9:0] Y0=0;

	reg[7:0] color_R=0;
	reg[7:0] color_B=0;
	reg[7:0] color_G=0;
	
	
	
	//wire [7:0] displayA [64:0] = display;
	
			 
	Pixel_On_Text2 t1(
		VGA_CLK_IN,
		displayA[0],
		175, // text position.x (top left)
		75, // text position.y (top left)
		X0, // current position.x
		Y0, // current position.y
		pixel  // result, 1 if current pixel is on text, 0 otherwise
	);

	
	Pixel_On_Text2 t2(
		VGA_CLK_IN,
		displayA[1],
		185, // text position.x (top left)
		75, // text position.y (top left)
		X0, // current position.x
		Y0, // current position.y
		pixel2  // result, 1 if current pixel is on text, 0 otherwise
	);
	
	Pixel_On_Text2 t3(
		VGA_CLK_IN,
		displayA[2],
		195, // text position.x (top left)
		75, // text position.y (top left)
		X0, // current position.x
		Y0, // current position.y
		pixel3  // result, 1 if current pixel is on text, 0 otherwise
	);

	
	Pixel_On_Text2 t4(
		VGA_CLK_IN,
		displayA[3],
		205, // text position.x (top left)
		75, // text position.y (top left)
		X0, // current position.x
		Y0, // current position.y
		pixel4  // result, 1 if current pixel is on text, 0 otherwise
	);
	
		Pixel_On_Text2 t5(
		VGA_CLK_IN,
		displayA[4],
		215, // text position.x (top left)
		75, // text position.y (top left)
		X0, // current position.x
		Y0, // current position.y
		pixel5  // result, 1 if current pixel is on text, 0 otherwise
	);

	
	Pixel_On_Text2 t6(
		VGA_CLK_IN,
		displayA[5],
		225, // text position.x (top left)
		75, // text position.y (top left)
		X0, // current position.x
		Y0, // current position.y
		pixel6  // result, 1 if current pixel is on text, 0 otherwise
	);
	
		Pixel_On_Text2 t7(
		VGA_CLK_IN,
		displayA[6],
		235, // text position.x (top left)
		75, // text position.y (top left)
		X0, // current position.x
		Y0, // current position.y
		pixel7  // result, 1 if current pixel is on text, 0 otherwise
	);

	
	Pixel_On_Text2 t8(
		VGA_CLK_IN,
		displayA[7],
		245, // text position.x (top left)
		75, // text position.y (top left)
		X0, // current position.x
		Y0, // current position.y
		pixel8  // result, 1 if current pixel is on text, 0 otherwise
	);
	
	Pixel_On_Text2 t9(
		VGA_CLK_IN,
		displayA[8],
		255, // text position.x (top left)
		75, // text position.y (top left)
		X0, // current position.x
		Y0, // current position.y
		pixel9  // result, 1 if current pixel is on text, 0 otherwise
	);

	
	Pixel_On_Text2 t10(
		VGA_CLK_IN,
		displayA[9],
		265, // text position.x (top left)
		75, // text position.y (top left)
		X0, // current position.x
		Y0, // current position.y
		pixel10  // result, 1 if current pixel is on text, 0 otherwise
	);
	
	Pixel_On_Text2 t11(
		VGA_CLK_IN,
		displayA[10],
		275, // text position.x (top left)
		75, // text position.y (top left)
		X0, // current position.x
		Y0, // current position.y
		pixel11  // result, 1 if current pixel is on text, 0 otherwise
	);

	
	Pixel_On_Text2 t12(
		VGA_CLK_IN,
		displayA[11],
		285, // text position.x (top left)
		75, // text position.y (top left)
		X0, // current position.x
		Y0, // current position.y
		pixel12  // result, 1 if current pixel is on text, 0 otherwise
	);
	
		Pixel_On_Text2 t13(
		VGA_CLK_IN,
		displayA[12],
		295, // text position.x (top left)
		75, // text position.y (top left)
		X0, // current position.x
		Y0, // current position.y
		pixel13 // result, 1 if current pixel is on text, 0 otherwise
	);

	
	Pixel_On_Text2 t14(
		VGA_CLK_IN,
		displayA[13],
		305, // text position.x (top left)
		75, // text position.y (top left)
		X0, // current position.x
		Y0, // current position.y
		pixel14  // result, 1 if current pixel is on text, 0 otherwise
	);
	
		Pixel_On_Text2 t15(
		VGA_CLK_IN,
		displayA[14],
		315, // text position.x (top left)
		75, // text position.y (top left)
		X0, // current position.x
		Y0, // current position.y
		pixel15  // result, 1 if current pixel is on text, 0 otherwise
	);

	
	Pixel_On_Text2 t16(
		VGA_CLK_IN,
		displayA[15],
		325, // text position.x (top left)
		75, // text position.y (top left)
		X0, // current position.x
		Y0, // current position.y
		pixel16  // result, 1 if current pixel is on text, 0 otherwise
	);
	
	Pixel_On_Text2 t17(
		VGA_CLK_IN,
		displayA[16],
		335, // text position.x (top left)
		75, // text position.y (top left)
		X0, // current position.x
		Y0, // current position.y
		pixel17 // result, 1 if current pixel is on text, 0 otherwise
	);

	
	Pixel_On_Text2 t18(
		VGA_CLK_IN,
		displayA[17],
		345, // text position.x (top left)
		75, // text position.y (top left)
		X0, // current position.x
		Y0, // current position.y
		pixel18  // result, 1 if current pixel is on text, 0 otherwise
	);
	
		Pixel_On_Text2 t19(
		VGA_CLK_IN,
		displayA[18],
		355, // text position.x (top left)
		75, // text position.y (top left)
		X0, // current position.x
		Y0, // current position.y
		pixel19  // result, 1 if current pixel is on text, 0 otherwise
	);

	
	Pixel_On_Text2 t20(
		VGA_CLK_IN,
		displayA[19],
		365, // text position.x (top left)
		75, // text position.y (top left)
		X0, // current position.x
		Y0, // current position.y
		pixel20  // result, 1 if current pixel is on text, 0 otherwise
	);
	
		Pixel_On_Text2 t21(
		VGA_CLK_IN,
		displayA[20],
		375, // text position.x (top left)
		75, // text position.y (top left)
		X0, // current position.x
		Y0, // current position.y
		pixel21 // result, 1 if current pixel is on text, 0 otherwise
	);

	
	Pixel_On_Text2 t22(
		VGA_CLK_IN,
		displayA[21],
		385, // text position.x (top left)
		75, // text position.y (top left)
		X0, // current position.x
		Y0, // current position.y
		pixel22  // result, 1 if current pixel is on text, 0 otherwise
	);
	
	Pixel_On_Text2 t23(
		VGA_CLK_IN,
		displayA[22],
		395, // text position.x (top left)
		75, // text position.y (top left)
		X0, // current position.x
		Y0, // current position.y
		pixel23  // result, 1 if current pixel is on text, 0 otherwise
	);

	
	Pixel_On_Text2 t24(
		VGA_CLK_IN,
		displayA[23],
		405, // text position.x (top left)
		75, // text position.y (top left)
		X0, // current position.x
		Y0, // current position.y
		pixel24  // result, 1 if current pixel is on text, 0 otherwise
	);
	
	Pixel_On_Text2 t25(
		VGA_CLK_IN,
		displayA[24],
		415, // text position.x (top left)
		75, // text position.y (top left)
		X0, // current position.x
		Y0, // current position.y
		pixel25  // result, 1 if current pixel is on text, 0 otherwise
	);

	
	Pixel_On_Text2 t26(
		VGA_CLK_IN,
		displayA[25],
		425, // text position.x (top left)
		75, // text position.y (top left)
		X0, // current position.x
		Y0, // current position.y
		pixel26  // result, 1 if current pixel is on text, 0 otherwise
	);
	
		Pixel_On_Text2 t227(
		VGA_CLK_IN,
		displayA[26],
		435, // text position.x (top left)
		75, // text position.y (top left)
		X0, // current position.x
		Y0, // current position.y
		pixel27  // result, 1 if current pixel is on text, 0 otherwise
	);

	
	Pixel_On_Text2 t28(
		VGA_CLK_IN,
		displayA[27],
		445, // text position.x (top left)
		75, // text position.y (top left)
		X0, // current position.x
		Y0, // current position.y
		pixel28  // result, 1 if current pixel is on text, 0 otherwise
	);
	
	Pixel_On_Text2 t29(
		VGA_CLK_IN,
		displayA[28],
		455, // text position.x (top left)
		75, // text position.y (top left)
		X0, // current position.x
		Y0, // current position.y
		pixel29  // result, 1 if current pixel is on text, 0 otherwise
	);

	
	Pixel_On_Text2 t30(
		VGA_CLK_IN,
		displayA[29],
		465, // text position.x (top left)
		75, // text position.y (top left)
		X0, // current position.x
		Y0, // current position.y
		pixel30  // result, 1 if current pixel is on text, 0 otherwise
	);
	
	
	
	Pixel_On_Text2 t31(
		VGA_CLK_IN,
		displayA[30],
		475, // text position.x (top left)
		75, // text position.y (top left)
		X0, // current position.x
		Y0, // current position.y
		pixel31  // result, 1 if current pixel is on text, 0 otherwise
	);

	
	Pixel_On_Text2 t32(
		VGA_CLK_IN,
		displayA[31],
		485, // text position.x (top left)
		75, // text position.y (top left)
		X0, // current position.x
		Y0, // current position.y
		pixel32  // result, 1 if current pixel is on text, 0 otherwise
	);
	
		Pixel_On_Text2 t33(
		VGA_CLK_IN,
		displayA[32],
		495, // text position.x (top left)
		75, // text position.y (top left)
		X0, // current position.x
		Y0, // current position.y
		pixel33 // result, 1 if current pixel is on text, 0 otherwise
	);

	
	Pixel_On_Text2 t34(
		VGA_CLK_IN,
		displayA[33],
		505, // text position.x (top left)
		75, // text position.y (top left)
		X0, // current position.x
		Y0, // current position.y
		pixel34  // result, 1 if current pixel is on text, 0 otherwise
	);
	
		Pixel_On_Text2 t35(
		VGA_CLK_IN,
		displayA[34],
		515, // text position.x (top left)
		75, // text position.y (top left)
		X0, // current position.x
		Y0, // current position.y
		pixel35  // result, 1 if current pixel is on text, 0 otherwise
	);

	
	Pixel_On_Text2 t36(
		VGA_CLK_IN,
		displayA[35],
		525, // text position.x (top left)
		75, // text position.y (top left)
		X0, // current position.x
		Y0, // current position.y
		pixel36  // result, 1 if current pixel is on text, 0 otherwise
	);
	
	Pixel_On_Text2 t37(
		VGA_CLK_IN,
		displayA[36],
		535, // text position.x (top left)
		75, // text position.y (top left)
		X0, // current position.x
		Y0, // current position.y
		pixel37 // result, 1 if current pixel is on text, 0 otherwise
	);

	
	Pixel_On_Text2 t38(
		VGA_CLK_IN,
		displayA[37],
		545, // text position.x (top left)
		75, // text position.y (top left)
		X0, // current position.x
		Y0, // current position.y
		pixel38  // result, 1 if current pixel is on text, 0 otherwise
	);
	
		Pixel_On_Text2 t39(
		VGA_CLK_IN,
		displayA[38],
		555, // text position.x (top left)
		75, // text position.y (top left)
		X0, // current position.x
		Y0, // current position.y
		pixel39  // result, 1 if current pixel is on text, 0 otherwise
	);
	
	Pixel_On_Text2 t40(
		VGA_CLK_IN,
		displayA[39],
		565, // text position.x (top left)
		75, // text position.y (top left)
		X0, // current position.x
		Y0, // current position.y
		pixel40  // result, 1 if current pixel is on text, 0 otherwise
	);


	
	



	
	//FOR DOBLE
	always @(posedge VGA_CLK_IN)
		begin
			if(X0 < 799)
				X0 <= X0 + 1;
			else
				X0 <= 0;
		end
		
	always @(posedge VGA_CLK_IN)
		begin
			if(X0 == 799)
				begin
					if(Y0 < 525)
						Y0 <= Y0 + 1;
					else
						Y0 <= 0;
				end
		end
	
	always @(posedge VGA_CLK_IN)
		if((0 < X0 && X0 < 800) && (0 < Y0 && Y0 < 520) && 
						  (Y0 == 90  || Y0 == 110 || Y0 == 130 || Y0 == 150 || Y0 == 170 || Y0 == 190 || Y0 == 210 || 
							Y0 == 230 || Y0 == 250 || Y0 == 270 || Y0 == 290 || Y0 == 310 || Y0 == 330 || Y0 == 350 ||
							Y0 == 370 || Y0 == 390 || Y0 == 410 || Y0 == 430 || Y0 == 450 || Y0 == 30  || Y0 == 50  || 
							Y0 == 70  || Y0 == 10  || Y0 == 470	|| Y0 == 490 || Y0 == 510	
							)) 
		begin
			{color_R,color_G,color_B} <= `BLUE;;
		end
		else if((0 < X0 && X0 < 800) && (0 < Y0 && Y0 < 520) && X0 == 175)
			begin
				{color_R,color_G,color_B} <= `RED;;
		end
		else 
			begin
				if(pixel == 1 || pixel2 == 1 || pixel3 == 1 || pixel4 == 1 || pixel5 == 1 || pixel6 == 1 || pixel7 == 1 || pixel8 == 1
				|| pixel9 == 1 || pixel10 == 1 || pixel11 == 1 || pixel12 == 1 || pixel13 == 1 || pixel14 == 1 || pixel15 == 1 || pixel16 == 1
				|| pixel17 == 1 || pixel18 == 1 || pixel19 == 1 || pixel20 == 1|| pixel21 == 1|| pixel22 == 1  || pixel23 == 1 || pixel24 == 1 
				|| pixel25 == 1 || pixel26 == 1 || pixel27 == 1 || pixel28 == 1|| pixel29 == 1 || pixel30 == 1) {color_R,color_G,color_B} <= `BLACK;
				else {color_R,color_G,color_B} <= `WHITE;
			end
		
		

	
	assign o_hsync = (0 <= X0 && X0 <96) ? 1:0;
	assign o_vsync = (0 <= Y0 && Y0 <2) ? 1:0;
	
	assign VGA_CLK_OUT = VGA_CLK_IN;
	
	assign out_R = (X0 > 144 && X0 <= 783 && Y0 > 35 && Y0 <= 514)? color_R:8'h00;
	assign out_B = (X0 > 144 && X0 <= 783 && Y0 > 35 && Y0 <= 514)? color_B:8'h00;
	assign out_G = (X0 > 144 && X0 <= 783 && Y0 > 35 && Y0 <= 514)? color_G:8'h00;
	
endmodule