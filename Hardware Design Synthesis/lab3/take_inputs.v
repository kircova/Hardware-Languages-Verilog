
module take_inputs (clk, reset, SW, BTN, operand1, operand2, format, start);
	 
input reset, clk, BTN;
input [3:0] SW;

output reg [7:0] operand1;
output reg [7:0] operand2;
output reg [3:0] format;
output reg start;

reg[3:0] counter;

always @ (posedge clk or posedge reset)
begin
	if(reset)
		counter <= 0;
	else if(BTN)
		counter <= counter + 1;
end


always @ (posedge clk or posedge reset)
begin
	if (reset)
	begin
		start <= 0;
		operand1 <= 0;
		operand2 <= 0;
		format <= 0;
	end
	else if (BTN && counter == 0)
	begin
		format[3:0] <= SW[3:0];
	end
	else if (BTN && counter == 1)
	begin
		operand1[3:0] <= SW[3:0];
	end
	else if (BTN && counter == 2)
	begin
		operand1[7:4] <= SW[3:0];
	end
	else if (BTN && counter == 3)
	begin
		operand2[3:0] <= SW[3:0];
	end
	else if (BTN && counter == 4)
	begin
		operand2[7:4] <= SW[3:0];
		start <= 1; 
	end
end





endmodule

