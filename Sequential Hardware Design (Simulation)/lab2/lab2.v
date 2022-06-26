`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:39:18 04/18/2022 
// Design Name: 
// Module Name:    lab2 
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

module c_type(I1,I2,I3,I4,I5,I6,I7,I8,O1,O2,O3);
	input [7:0] I1,I2,I3,I4,I5,I6,I7,I8;
	output [7:0] O1,O2,O3;
	wire [13:0] temp1,temp2,temp3;
	
	assign temp1 = (I1 + (I2 << 1) + (I3<<2) + (I3<<1) + (I4<<5) + (I4<<3) + (I4 <<2) + (I4<<1) + (I5 << 2) + (I5 <<1)+ (I6<<1) + I7);
	assign O1 = temp1>>6;
	assign temp2 = (I1 + (I2 <<2) + (I3<<2) + (I3<<1) + (I4<<5) + (I4 <<3) + (I4 <<1) + (I5<<2) + (I5<<1)+ (I6<<2) + I7);
	assign O2 = temp2>>6;
	assign temp3 = (I2 + (I3 << 3) + (I3<<1) + (I4<<2) + (I5<<5) + (I5<<1) + (I6<<2) + (I7<<3) + (I7<<1) + I8);
	assign O3 = temp3>>6;
	
endmodule


module sp_interpolator (clk, reset, start, I11,I12,I13,I14,I15,I16,I17,I18,I21,I22,
I23,I24,I25,I26,I27,I28,I31,I32,I33,I34,I35,I36,I37,I38,I41,I42,I43,I44,I45,I46,I47,
I48,I51,I52,I53,I54,I55,I56,I57,I58,I61,I62,I63,I64,I65,I66,I67,I68,I71,I72,I73,I74,I75,
I76,I77,I78,I81,I82,I83, I84,I85,I86,I87,I88,a44,b44,c44,d,h,n,e,i,p,f,j,q,g,k,r,done);
 input clk, reset, start;
 
 input [7:0] I11,I12,I13,I14,I15,I16,I17,I18,I21,I22,I23,I24,I25,I26,I27,I28,
I31,I32,I33,I34,I35,I36,I37,I38,I41,I42,I43,I44,I45,I46,I47,I48,
I51,I52,I53,I54,I55,I56,I57,I58,I61,I62,I63,I64,I65,I66,I67,I68,
I71,I72,I73,I74,I75,I76,I77,I78,I81,I82,I83,I84,I85,I86,I87,I88;

	reg [4:0] counter;	
	reg [7:0] in1,in2,in3,in4,in5,in6,in7,in8;
	wire [7:0] out1, out2, out3;
	
	reg[7:0] a41,b41,c41, 
			 a42,b42,c42, 
			 a43,b43,c43, 
			 a45,b45,c45, 
			 a46,b46,c46,
			 a47,b47,c47,
			 a48,b48,c48;
			 
	output reg [7:0] a44,b44,c44,d,h,n,e,i,p,f,j,q,g,k,r;
	output reg [1:0] done;
	
	c_type CALCULATE(in1,in2,in3,in4,in5,in6,in7,in8,out1,out2,out3);

	// counter
	always @(posedge clk) begin
		if(reset) // synchronous reset
			counter <= 0;
		else if(start)begin
			counter <= 1;
			done <= 0;
			end
		else if(1 <= counter <= 12)
			counter <= counter + 1;
		else
			counter <= 0;
	end

	always @(*) begin 
		if(reset) begin
			in1 <= 0;
			in2 <= 0;
			in3 <= 0;
			in4 <= 0;
			in5 <= 0;
			in6 <= 0;
			in7 <= 0;
			in8 <= 0;
		end
		else if(counter == 1) begin
			in1 <= I11;
			in2 <= I21;
			in3 <= I31;
			in4 <= I41;
			in5 <= I51;
			in6 <= I61;
			in7 <= I71;
			in8 <= I81;
		end
		else if(counter == 2) begin
			in1 <= I12;
			in2 <= I22;
			in3 <= I32;
			in4 <= I42;
			in5 <= I52;
			in6 <= I62;
			in7 <= I72;
			in8 <= I82;
		end
		else if(counter == 3) begin
			in1 <= I13;
			in2 <= I23;
			in3 <= I33;
			in4 <= I43;
			in5 <= I53;
			in6 <= I63;
			in7 <= I73;
			in8 <= I83;
		end
		else if(counter == 4) begin
			in1 <= I14;
			in2 <= I24;
			in3 <= I34;
			in4 <= I44;
			in5 <= I54;
			in6 <= I64;
			in7 <= I74;
			in8 <= I84;
		end
		else if(counter == 5) begin
			in1 <= I15;
			in2 <= I25;
			in3 <= I35;
			in4 <= I45;
			in5 <= I55;
			in6 <= I65;
			in7 <= I75;
			in8 <= I85;
		end
		else if(counter == 6) begin
			in1 <= I16;
			in2 <= I26;
			in3 <= I36;
			in4 <= I46;
			in5 <= I56;
			in6 <= I66;
			in7 <= I76;
			in8 <= I86;
		end
		else if(counter == 6) begin
			in1 <= I16;
			in2 <= I26;
			in3 <= I36;
			in4 <= I46;
			in5 <= I56;
			in6 <= I66;
			in7 <= I76;
			in8 <= I86;
		end
		else if(counter == 7) begin
			in1 <= I17;
			in2 <= I27;
			in3 <= I37;
			in4 <= I47;
			in5 <= I57;
			in6 <= I67;
			in7 <= I77;
			in8 <= I87;
		end
		else if(counter == 8) begin
			in1 <= I18;
			in2 <= I28;
			in3 <= I38;
			in4 <= I48;
			in5 <= I58;
			in6 <= I68;
			in7 <= I78;
			in8 <= I88;
		end
		else if(counter == 9) begin
			in1 <= I41;
			in2 <= I42;
			in3 <= I43;
			in4 <= I44;
			in5 <= I45;
			in6 <= I46;
			in7 <= I47;
			in8 <= I48;
		end
		else if(counter == 10) begin
			in1 <= a41;
			in2 <= a42;
			in3 <= a43;
			in4 <= a44;
			in5 <= a45;
			in6 <= a46;
			in7 <= a47;
			in8 <= a48;
		end
		else if(counter == 11) begin
			in1 <= b41;
			in2 <= b42;
			in3 <= b43;
			in4 <= b44;
			in5 <= b45;
			in6 <= b46;
			in7 <= b47;
			in8 <= b48;
		end
		else if(counter == 12) begin
			in1 <= c41;
			in2 <= c42;
			in3 <= c43;
			in4 <= c44;
			in5 <= c45;
			in6 <= c46;
			in7 <= c47;
			in8 <= c48;
		end
	end
	
	always @(*) begin 
		if(reset) begin
			a44 <= 0;
			b44 <= 0;
			c44 <= 0;
			d <= 0;
			h <= 0;
			n <= 0;
			e <= 0;
			i <= 0;
			p <= 0;
			f <= 0;
			j <= 0;
			q <= 0;
			g <= 0;
			k <= 0;
			r <= 0;
			done <= 0;
		end
		else if(counter == 1)begin
			a41 <= out1;
			b41 <= out2;
			c41 <= out3;

			a44 <= a44;
			b44 <= a44;
			c44 <= c44;
			d <= d;
			h <= h;
			n <= n;
			e <= e;
			i <= i;
			p <= p;
			f <= f;
			j <= j;
			q <= q;
			g <= g;
			k <= k;
			r <= r;
		end
		else if(counter == 2)begin
			a42 <= out1;
			b42 <= out2;
			c42 <= out3;
		end
		else if(counter == 3)begin
			a43 <= out1;
			b43 <= out2;
			c43 <= out3;
		end
		else if(counter == 4)begin
			a44 <= out1;
			b44 <= out2;
			c44 <= out3;
		end
		else if(counter == 5)begin
			a45 <= out1;
			b45 <= out2;
			c45 <= out3;
		end
		else if(counter == 6)begin
			a46 <= out1;
			b46 <= out2;
			c46 <= out3;
		end
		else if(counter == 7)begin
			a47 <= out1;
			b47 <= out2;
			c47 <= out3;
		end
		else if(counter == 8)begin
			a48 <= out1;
			b48 <= out2;
			c48 <= out3;
		end
		else if(counter == 9)begin
			d <= out1;
			h <= out2;
			n <= out3;
		end
		else if(counter == 10)begin
			e <= out1;
			i <= out2;
			p <= out3;
		end
		else if(counter == 11)begin
			f <= out1;
			j <= out2;
			q <= out3;
		end
		else if(counter == 12)begin
			g <= out1;
			k <= out2;
			r <= out3;
			done <= 1;
		end
	end
	
endmodule
