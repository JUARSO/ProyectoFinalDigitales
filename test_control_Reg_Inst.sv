`timescale 1 ns / 1 ns


module test_control_Reg_Inst();

logic clk,reset,resetvga;
logic [7:0] R;
logic [7:0] G;
logic [7:0] B;
logic hsync;
logic vsync;
logic vgaclk;

control_Reg_Inst CRI(clk,reset,resetvga,R,G,B,hsync,vsync,vgaclk);

initial begin


     reset=0;
     #15;
      reset=1;
     #15;
     reset=0;
     #15;

end



    always
begin
clk <= 1; # 10; clk <= 0; # 10;
end

endmodule