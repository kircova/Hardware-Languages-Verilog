`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:06:00 04/18/2022
// Design Name:   sp_interpolator
// Module Name:   D:/EE310Projects/lab2/testbench.v
// Project Name:  lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sp_interpolator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbench;

	// Inputs
	reg clk;
	reg reset;
	reg start;
	
	always #5 clk = ~clk;
	
	reg [7:0] I11;
	reg [7:0] I12;
	reg [7:0] I13;
	reg [7:0] I14;
	reg [7:0] I15;
	reg [7:0] I16;
	reg [7:0] I17;
	reg [7:0] I18;
	reg [7:0] I21;
	reg [7:0] I22;
	reg [7:0] I23;
	reg [7:0] I24;
	reg [7:0] I25;
	reg [7:0] I26;
	reg [7:0] I27;
	reg [7:0] I28;
	reg [7:0] I31;
	reg [7:0] I32;
	reg [7:0] I33;
	reg [7:0] I34;
	reg [7:0] I35;
	reg [7:0] I36;
	reg [7:0] I37;
	reg [7:0] I38;
	reg [7:0] I41;
	reg [7:0] I42;
	reg [7:0] I43;
	reg [7:0] I44;
	reg [7:0] I45;
	reg [7:0] I46;
	reg [7:0] I47;
	reg [7:0] I48;
	reg [7:0] I51;
	reg [7:0] I52;
	reg [7:0] I53;
	reg [7:0] I54;
	reg [7:0] I55;
	reg [7:0] I56;
	reg [7:0] I57;
	reg [7:0] I58;
	reg [7:0] I61;
	reg [7:0] I62;
	reg [7:0] I63;
	reg [7:0] I64;
	reg [7:0] I65;
	reg [7:0] I66;
	reg [7:0] I67;
	reg [7:0] I68;
	reg [7:0] I71;
	reg [7:0] I72;
	reg [7:0] I73;
	reg [7:0] I74;
	reg [7:0] I75;
	reg [7:0] I76;
	reg [7:0] I77;
	reg [7:0] I78;
	reg [7:0] I81;
	reg [7:0] I82;
	reg [7:0] I83;
	reg [7:0] I84;
	reg [7:0] I85;
	reg [7:0] I86;
	reg [7:0] I87;
	reg [7:0] I88;

	// Outputs
	wire [7:0] a44;
	wire [7:0] b44;
	wire [7:0] c44;
	wire [7:0] d;
	wire [7:0] h;
	wire [7:0] n;
	wire [7:0] e;
	wire [7:0] i;
	wire [7:0] p;
	wire [7:0] f;
	wire [7:0] j;
	wire [7:0] q;
	wire [7:0] g;
	wire [7:0] k;
	wire [7:0] r;
	wire [1:0] done;

	// Instantiate the Unit Under Test (UUT)
	sp_interpolator uut (
		.clk(clk), 
		.reset(reset), 
		.start(start), 
		.I11(I11), 
		.I12(I12), 
		.I13(I13), 
		.I14(I14), 
		.I15(I15), 
		.I16(I16), 
		.I17(I17), 
		.I18(I18), 
		.I21(I21), 
		.I22(I22), 
		.I23(I23), 
		.I24(I24), 
		.I25(I25), 
		.I26(I26), 
		.I27(I27), 
		.I28(I28), 
		.I31(I31), 
		.I32(I32), 
		.I33(I33), 
		.I34(I34), 
		.I35(I35), 
		.I36(I36), 
		.I37(I37), 
		.I38(I38), 
		.I41(I41), 
		.I42(I42), 
		.I43(I43), 
		.I44(I44), 
		.I45(I45), 
		.I46(I46), 
		.I47(I47), 
		.I48(I48), 
		.I51(I51), 
		.I52(I52), 
		.I53(I53), 
		.I54(I54), 
		.I55(I55), 
		.I56(I56), 
		.I57(I57), 
		.I58(I58), 
		.I61(I61), 
		.I62(I62), 
		.I63(I63), 
		.I64(I64), 
		.I65(I65), 
		.I66(I66), 
		.I67(I67), 
		.I68(I68), 
		.I71(I71), 
		.I72(I72), 
		.I73(I73), 
		.I74(I74), 
		.I75(I75), 
		.I76(I76), 
		.I77(I77), 
		.I78(I78), 
		.I81(I81), 
		.I82(I82), 
		.I83(I83), 
		.I84(I84), 
		.I85(I85), 
		.I86(I86), 
		.I87(I87), 
		.I88(I88), 
		.a44(a44), 
		.b44(b44), 
		.c44(c44), 
		.d(d), 
		.h(h), 
		.n(n), 
		.e(e), 
		.i(i), 
		.p(p), 
		.f(f), 
		.j(j), 
		.q(q), 
		.g(g), 
		.k(k), 
		.r(r), 
		.done(done)
	);

	initial begin
		// Initialize Inputs
		
		clk = 0;
	
		I11 = 0;
		I12 = 0;
		I13 = 0;
		I14 = 0;
		I15 = 0;
		I16 = 0;
		I17 = 0;
		I18 = 0;
		I21 = 0;
		I22 = 0;
		I23 = 0;
		I24 = 0;
		I25 = 0;
		I26 = 0;
		I27 = 0;
		I28 = 0;
		I31 = 0;
		I32 = 0;
		I33 = 0;
		I34 = 0;
		I35 = 0;
		I36 = 0;
		I37 = 0;
		I38 = 0;
		I41 = 0;
		I42 = 0;
		I43 = 0;
		I44 = 0;
		I45 = 0;
		I46 = 0;
		I47 = 0;
		I48 = 0;
		I51 = 0;
		I52 = 0;
		I53 = 0;
		I54 = 0;
		I55 = 0;
		I56 = 0;
		I57 = 0;
		I58 = 0;
		I61 = 0;
		I62 = 0;
		I63 = 0;
		I64 = 0;
		I65 = 0;
		I66 = 0;
		I67 = 0;
		I68 = 0;
		I71 = 0;
		I72 = 0;
		I73 = 0;
		I74 = 0;
		I75 = 0;
		I76 = 0;
		I77 = 0;
		I78 = 0;
		I81 = 0;
		I82 = 0;
		I83 = 0;
		I84 = 0;
		I85 = 0;
		I86 = 0;
		I87 = 0;
		I88 = 0;
		

		// Wait 100 ns for global reset to finish
		#100;
	
		#20;
		start = 1;
		#10;
		start = 0;
		#10;
      #200;  // more than 16 clock cycles
		 
		I11 = 3; I21 = 1; I31 = 1; I41 = 89; I51 = 14; I61 = 1; I71 = 10; I81 = 7;
		I12 = 14; I22 = 13; I32 = 30; I42 = 1; I52 = 1; I62 = 13; I72 = 13; I82 = 4;
		I13 = 12; I23 = 4; I33 = 14; I43 = 32; I53 = 23; I63 = 14; I73 = 61; I83 = 1;
		I14 = 11; I24 = 67; I34 = 78; I44 = 41; I54 = 56; I64 = 6; I74 = 72; I84 = 81;
		I15 = 15; I25 = 45; I35 = 15; I45 = 10; I55 = 41; I65 = 17; I75 = 1; I85 = 43;
		I16 = 19; I26 = 12; I36 = 13; I46 = 1; I56 = 16; I66 = 56; I76 = 14; I86 = 67;
		I17 = 34; I27 = 11; I37 = 18; I47 = 13; I57 = 57; I67 = 32; I77 = 71; I87 = 12;
		I18 = 78; I28 = 13; I38 = 63; I48 = 1; I58 = 42; I68 = 42; I78 = 15; I88 = 1;
		//a44 45 b44 45c44 58 d 35 h 32 n 15 e 38 i 35 p 18 f 38 j 35 q 19 g 48 k 46 r 31

		
		// Add stimulus here
		
		#200;
		reset = 1;
		#10;
		reset = 0;
		#10;
		
		#20;
		start = 1;
		#10;
		start = 0;
		#10;
      #200;  // more than 16 clock cycles
		
		
		I11 = 10; I21 = 10; I31 = 10; I41 = 10; I51 = 10; I61 = 10; I71 = 10; I81 = 10;
		I12 = 10; I22 = 10; I32 = 10; I42 = 10; I52 = 10; I62 = 10; I72 = 10; I82 = 10;
		I13 = 10; I23 = 10; I33 = 10; I43 = 10; I53 = 10; I63 = 10; I73 = 10; I83 = 10;
		I14 = 1; I24 = 2; I34 = 3; I44 = 4; I54 = 5; I64 = 6; I74 = 7; I84 = 8;
		I15 = 10; I25 = 10; I35 = 10; I45 = 10; I55 = 10; I65 = 10; I75 = 10; I85 = 10;
		I16 = 10; I26 = 10; I36 = 10; I46 = 10; I56 = 10; I66 = 10; I76 = 10; I86 = 10;
		I17 = 10; I27 = 10; I37 = 10; I47 = 10; I57 = 10; I67 = 10; I77 = 10; I87 = 10;
		I18 = 10; I28 = 10; I38 = 10; I48 = 10; I58 = 10; I68 = 10; I78 = 10; I88 = 10;
	
		//a44 4.0 b44 4.0 c44 5.0 d 5 h 6 n 9 e 5 i 6 p 9 f 5 j 6 q 9 g 6 k 6 r 9
		
		#200;
		reset = 1;
		#10;
		reset = 0;
		#10;
				
	end
      
endmodule

