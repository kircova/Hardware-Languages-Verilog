# Laboratory Assignment #

Design and implement a digital hardware which adds two unsigned fixed-point or
floating-point numbers. Then, verify your Verilog RTL implementation in the Xilinx
Spartan FPGA on the DIGILENT Spartan- 3 E starter board.

Your hardware should take format type (fixed-point or floating-point) and two 8 - bit
numbers as inputs, and it should calculate the output. Your hardware should work at
50 MHz.

A fixed-point number is represented using a fixed number of digits before radix point
(integer part) and a fixed number of digits after radix point (fractional part). If format
type is specified as fixed-point, your hardware should take two 8 - bit input numbers
as unsigned fixed-point numbers with 4 - bit integer part and 4 - bit fractional part. For
example, 1.25 is represented as 00010100 in 8 - bit unsigned fixed-point format.

A floating-point number is represented using a mantissa and an exponent. If format
type is specified as floating-point, your hardware should take two 8 - bit input numbers
as unsigned floating-point numbers with 4 - bit mantissa and 4 - bit exponent. There is
also an implied bit of mantissa which is always 1. For example, mantissa 0100 is
equal to 1.010 0. The base of exponent is 2. Therefore, a number given in 8 - bit
unsigned floating-point format is equal to 1 .𝑚𝑎𝑛𝑡𝑖𝑠𝑠𝑎 𝑥 2 𝑒𝑥𝑝𝑜𝑛𝑒𝑛𝑡. For example, 1.
is represented as 01000000 in 8 - bit unsigned floating-point format.

Output of your hardware should be in the same format as its inputs ( 8 - bit unsigned
fixed-point or floating-point). You can assume that the input numbers will be given
such that there will not be overflow after addition operation.

You should reset your hardware by pressing button BTN_SOUTH. Then, you should
give format type input to your hardware by using switch SW0. SW0 should be set to
0 (down) for fixed-point format. It should be set to 1 (up) for floating-point format. You
should set SW0 and press button BTN_NORTH (BTN).

You should then give two 8 - bit unsigned fixed-point or floating-point numbers as
inputs to your hardware by using 4 switches (SW 3 - SW0). For each input, you
should set 4 switches SW3 (MSB), SW2, SW1, SW 0 (LSB) and press BTN_NORTH
(BTN). After getting the inputs, your hardware should calculate the output value and
display it on the LCD screen in hexadecimal format.

Your top-level Verilog RTL module should have the following interface:
----------------------------------------------------------------------------------------------------------------
Port Name Width Direction FPGA pins
----------------------------------------------------------------------------------------------------------------
Clock 1 bit Input C
Reset 1 bit Input K
SW 4 bits Input N17, H18, L14, L
BTN 1 bit Input V
Data_Out 4 bits Output M15, P17, R16, R
LCD_Control 3 bits Output M18, L18, L
----------------------------------------------------------------------------------------------------------------

Write a Verilog testbench and verify the correctness of your Verilog RTL
implementation by RTL simulation. Synthesize and implement your Verilog RTL code
targeting Xilinx Spartan XC3S500E FG320 FPGA with speed grade 4 using Xilinx
ISE. Then, generate the FPGA configuration bitstream, download the bitstream into
Xilinx Spartan FPGA, and verify your Verilog RTL implementation on the board.
