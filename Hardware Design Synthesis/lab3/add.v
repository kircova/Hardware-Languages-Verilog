
module add (clk, reset, SW, BTN, data);

input clk, reset;
input [3:0] SW;
input BTN;
output reg [31:0] data;

wire [7:0] operand1;
wire [7:0] operand2;
wire [3:0] format;
wire [8:0] result;

take_inputs ti (clk, reset, SW, BTN, operand1, operand2, format, start);
process_inputs pi (operand1, operand2, format, result, start);

always @ *
   data = {00000000000000000000000,result};

endmodule

