
module top (Clock, Reset, SW, BTN, LCD_Control, Data_Out);

input Clock, Reset;
input [3:0] SW;
input BTN;

output [2:0] LCD_Control;
output [3:0] Data_Out;

wire [31:0] Data;

buttonCorrect bc1 (.clk(Clock), .button(BTN), .reset(Reset), .buttonCor(ButtonCor));

add add1 (.clk(Clock), .reset(Reset), .SW(SW), .BTN(ButtonCor), .data(Data));

LCDI li1 (.clk(Clock), .datain(Data), .dataout(Data_Out), .control(LCD_Control));

endmodule

