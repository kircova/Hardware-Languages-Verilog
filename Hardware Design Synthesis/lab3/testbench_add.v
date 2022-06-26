`timescale 1ns / 100ps

module testbench_add;

	// Inputs
	reg clk;
	reg reset;
	reg [3:0] SW;
	reg BTN;

	// Outputs
	wire [31:0] data;

	// Instantiate the design
	add add1 (.clk(clk), .reset(reset), .SW(SW), .BTN(BTN), .data(data));

	always #10 clk = ~clk; // 50 MHz Clock 

	initial 
	begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		SW = 0;
		BTN = 0;

		#100;
		
		reset = 1;
		#2
		reset = 0;
		SW = 4'b0001;//Initialize type
		BTN = 1;
		//1
		#20		
		BTN = 0;		
		#100
		
		#2
		SW = 4'b0010;//SAG of Operand1
		
		BTN = 1;		
		#20
		//2
		BTN = 0;		
		#100
		
		SW = 4'b1000;//SOL of Operand1
		BTN = 1;	
		#20
		//3
		BTN = 0;		
		#100

		#2
		SW = 4'b0001;//SAG of Operand2
		BTN = 1;		
		#20
		//4
		BTN = 0;		
		#100

		#2
		SW = 4'b1100;//SOL of Operand2
		BTN = 1;		
		#20
		//5
		BTN = 0;		
		#100
		
		//Second operation**************************
		
		#100;
		reset = 1;
		#2
		reset = 0;
		SW = 4'b0001;//Initialize type
		BTN = 1;
		//1
		#20		
		BTN = 0;		
		#100
		
		#2
		SW = 4'b0100;//SAG of Operand1
		
		BTN = 1;		
		#20
		//2
		BTN = 0;		
		#100
		
		SW = 4'b0010;//SOL of Operand1
		BTN = 1;	
		#20
		//3
		BTN = 0;		
		#100

		#2
		SW = 4'b0100;//SAG of Operand2
		BTN = 1;		
		#20
		//4
		BTN = 0;		
		#100

		#2
		SW = 4'b1100;//SOL of Operand2
		BTN = 1;		
		#20
		//5
		BTN = 0;		
		#100
		//Third case*********************************
		
				
		#100;
		reset = 1;
		#2
		reset = 0;
		SW = 4'b0000;//Initialize type
		BTN = 1;
		//1
		#20		
		BTN = 0;		
		#100
		
		#2
		SW = 4'b0100;//SAG of Operand1
		
		BTN = 1;		
		#20
		//2
		BTN = 0;		
		#100
		
		SW = 4'b0001;//SOL of Operand1
		BTN = 1;	
		#20
		//3
		BTN = 0;		
		#100

		#2
		SW = 4'b0100;//SAG of Operand2
		BTN = 1;		
		#20
		//4
		BTN = 0;		
		#100

		#2
		SW = 4'b0001;//SOL of Operand2
		BTN = 1;		
		#20
		//5
				BTN = 0;	
		#100
		
		$stop;
	end
endmodule

