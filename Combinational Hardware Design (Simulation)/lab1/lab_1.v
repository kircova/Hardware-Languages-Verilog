`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:55:11 04/03/2022 
// Design Name: 
// Module Name:    lab_1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module a_type(I1,I2,I3,I4,I5,I6,I7,O);
	input [7:0] I1,I2,I3,I4,I5,I6,I7;
	wire[13:0] temp;
	output [7:0] O;
	
	assign temp = I1 + (I2 << 1) + (I3<<2) + (I3<<1) + (I4<<5) + (I4<<3) + (I4 <<2) + (I4<<1) + (I5 << 2) + (I5 <<1)+ (I6<<1) + I7;
	assign O = temp >> 6;
	
endmodule

module b_type(I1,I2,I3,I4,I5,I6,I7,O);
	input [7:0] I1,I2,I3,I4,I5,I6,I7;
	wire [13:0] temp;
	output [7:0] O;
	
	assign temp = I1 + (I2 <<2) + (I3<<2) + (I3<<1) + (I4<<5) + (I4 <<3) + (I4 <<1) + (I5<<2) + (I5<<1)+ (I6<<2) + I7;
	assign O = temp >> 6;
	
endmodule

module c_type(I2,I3,I4,I5,I6,I7,I8,O);
	input [7:0] I2,I3,I4,I5,I6,I7,I8;
	wire [13:0] temp;
	output [7:0] O;
	
	assign temp =  I2 + (I3 << 3) + (I3<<1) + (I4<<2) + (I5<<5) + (I5<<1) + (I6<<2) + (I7<<3) + (I7<<1) + I8;
	assign O = temp >> 6;
	
endmodule


module sp_interpolator (I11,I12,I13,I14,I15,I16,I17,I18,
                                       I21,I22,I23,I24,I25,I26,I27,I28,
                                       I31,I32,I33,I34,I35,I36,I37,I38,
                                       I41,I42,I43,I44,I45,I46,I47,I48,
                                       I51,I52,I53,I54,I55,I56,I57,I58,
                                       I61,I62,I63,I64,I65,I66,I67,I68,
                                       I71,I72,I73,I74,I75,I76,I77,I78,
                                       I81,I82,I83,I84,I85,I86,I87,I88,
                                       a44,b44,c44,d,h,n,e,i,p,f,j,q,g,k,r);
													
input [7:0] I11,I21,I31,I41,I51,I61,I71,I81,I12,I22,I32,I42,I52,I62,I72,I82,
                 I13,I23,I33,I43,I53,I63,I73,I83,I14,I24,I34,I44,I54,I64,I74,I84,
                 I15,I25,I35,I45,I55,I65,I75,I85,I16,I26,I36,I46,I56,I66,I76,I86,
                 I17,I27,I37,I47,I57,I67,I77,I87,I18,I28,I38,I48,I58,I68,I78,I88;
output [7:0] a44,b44,c44,d,h,n,e,i,p,f,j,q,g,k,r;

wire [7:0] a41,b41,c41, 
			 a42,b42,c42, 
			 a43,b43,c43, 
			 a45,b45,c45, 
			 a46,b46,c46,
			 a47,b47,c47,
			 a48,b48,c48;
			 
	a_type A41(I11,I21,I31,I41,I51,I61,I71,a41);
	b_type B41(I11,I21,I31,I41,I51,I61,I71,b41);
	c_type C41(I21,I31,I41,I51,I61,I71,I81,c41);
	
	a_type A42(I12,I22,I32,I42,I52,I62,I72,a42);
	b_type B42(I12,I22,I32,I42,I52,I62,I72,b42);
	c_type C42(I22,I32,I42,I52,I62,I72,I82,c42);
	
	a_type A43(I13,I23,I33,I43,I53,I63,I73,a43);
	b_type B43(I13,I23,I33,I43,I53,I63,I73,b43);
	c_type C43(I23,I33,I43,I53,I63,I73,I83,c43);
	
	a_type A44(I14,I24,I34,I44,I54,I64,I74,a44);
	b_type B44(I14,I24,I34,I44,I54,I64,I74,b44);
	c_type C44(I24,I34,I44,I54,I64,I74,I84,c44);
	
	a_type A45(I15,I25,I35,I45,I55,I65,I75,a45);
	b_type B45(I15,I25,I35,I45,I55,I65,I75,b45);
	c_type C45(I25,I35,I45,I55,I65,I75,I85,c45);
			
	a_type A46(I16,I26,I36,I46,I56,I66,I76,a46);
	b_type B46(I16,I26,I36,I46,I56,I66,I76,b46);
	c_type C46(I26,I36,I46,I56,I66,I76,I86,c46);
			
	a_type A47(I17,I27,I37,I47,I57,I67,I77,a47);
	b_type B47(I17,I27,I37,I47,I57,I67,I77,b47);
	c_type C47(I27,I37,I47,I57,I67,I77,I87,c47);
			
	a_type A48(I18,I28,I38,I48,I58,I68,I78,a48);
	b_type B48(I18,I28,I38,I48,I58,I68,I78,b48);
	c_type C48(I28,I38,I48,I58,I68,I78,I88,c48);
			
	a_type DD(I41,I42,I43,I44,I45,I46,I47,d);
	b_type HH(I41,I42,I43,I44,I45,I46,I47,h);
	c_type NN(I42,I43,I44,I45,I46,I47,I48,n);
	
	a_type EE(a41,a42,a43,a44,a45,a46,a47,e);
	b_type ii(a41,a42,a43,a44,a45,a46,a47,i);
	c_type PP(a42,a43,a44,a45,a46,a47,a48,p);
		
	a_type FF(b41,b42,b43,b44,b45,b46,b47,f);
	b_type JJ(b41,b42,b43,b44,b45,b46,b47,j);
	c_type QQ(b42,b43,b44,b45,b46,b47,b48,q);
	
	a_type GG(c41,c42,c43,c44,c45,c46,c47,g);
	b_type KK(c41,c42,c43,c44,c45,c46,c47,k);
	c_type RR(c42,c43,c44,c45,c46,c47,c48,r);
		

endmodule
