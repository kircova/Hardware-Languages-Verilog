
module display_template (clk, rst, BTN_EAST, BTN_WEST, hs, vs, R, G, B, LED1, LED2);

//------------------------------------------------------------------------------
// IO ports
//------------------------------------------------------------------------------
// input
input clk;
input rst;
input BTN_EAST;
input BTN_WEST;
// output
output hs;
output vs;
output reg R;
output reg G;
output reg B;
output reg LED1;
output reg LED2;

//------------------------------------------------------------------------------
// VGA Controller
//------------------------------------------------------------------------------
// VGA display connections
wire [10:0] hcount;
wire [10:0] vcount;
wire blank;

// VGA controller instantiation
vga_controller_640_60 vga_cont (.clk(clk), 
				.rst(rst), 
				.HS(hs), 
				.VS(vs), 
				.hcount(hcount), 
				.vcount(vcount), 
				.blank(blank));

//------------------------------------------------------------------------------
// Input LENA image BRAM
//------------------------------------------------------------------------------
// Input Lena Image BRAM connections
wire [13:0] addr;  		// lena input BRAM read address
wire [7:0]  data_out;		// lena input BRAM pixel output
reg [13:0]  read_addr_in;	// lena input BRAM read address (for display)
reg [13:0]  read_addr_op; 	// lena input BRAM read address (for operation)

reg [13:0]  raddr_out_op;	// lena input BRAM read address (for display)
reg [13:0]  raddr_out_in;

// Block RAM instantiation
lena_input lena_in(
	.addra(addr),
	.clka(clk),
	.douta(data_out));

//------------------------------------------------------------------------------
// Output Image BRAM
//------------------------------------------------------------------------------
// connections
reg wen_out;		// output BRAM write enable signal
reg [13:0] raddr_out;	// output BRAM read address
reg [13:0] waddr_out;	// output BRAM write address
reg [7:0]  wdata_out;	// output BRAM pixel input
wire[7:0]  rdata_out;	// output BRAM pixel output

// Block RAM instantiation
block_ram result(
.clk       (clk),
.write_en  (wen_out),
.read_addr (raddr_out),
.write_addr(waddr_out),
.write_data(wdata_out),
.data_out  (rdata_out)
);

//------------------------------------------------------------------------------
// operation starts here
//------------------------------------------------------------------------------
// states
parameter IDLE = 0;			// no button is pressed
parameter BTN1_PRESS = 1;		// BTN_WEST is pressed
parameter OP1_FINISHED = 2;		// output image is generated and stored in output block ram
parameter OP_FINISHED = 3;		// output image is generated and stored in output block ram
parameter BTN2_PRESS = 4;		// BTN_EAST is pressed

// all necessary wires/regs
reg [2:0] curr_state,next_state;	// state registers

reg [7:0] I00;				// pixel read from input BRAM

reg [6:0] row_addr,col_addr;		// row/col registers for address generation
reg [3:0] op_counter;			// operation counter for operation on each pixel

wire [9:0] temp;
wire [7:0] negated_pixel;		// negated pixel

// state transition
always @(posedge clk or posedge rst) begin
	if(rst)
		curr_state <= 0;
	else
		curr_state <= next_state;
end

// state transition
always @ (*) begin
	case(curr_state)
	IDLE: begin
		if(BTN_WEST)
			next_state = BTN1_PRESS;
		else
			next_state = IDLE;
	end
	BTN1_PRESS: begin
		// if all pixel are negated, go to OP_FINISHED state
		if((curr_state == BTN1_PRESS) && (row_addr == 127) && (col_addr == 127) && (op_counter == 6))
			next_state = OP1_FINISHED;
		else
			next_state = BTN1_PRESS;
	end
	OP1_FINISHED:begin
		if((curr_state == OP1_FINISHED) && (row_addr == 127) && (col_addr == 127) && (op_counter == 6))
			next_state = OP_FINISHED;
		else
			next_state = OP1_FINISHED;
	end
	OP_FINISHED: begin
		if(BTN_EAST)
			next_state = BTN2_PRESS;
		else
			next_state = OP_FINISHED;
	end
	BTN2_PRESS: begin
		next_state = BTN2_PRESS;
	end
	default: begin
		next_state = IDLE;
	end
	endcase
end

reg[7:0] values[2:0];
reg[7:0] i1,i2,i3;

// operation starts here
always @ (posedge clk or posedge rst) 
begin
	//col_addr <= (op_counter == 2) ? (col_addr + 1) : col_addr;					// if a pixel's operation is finished, go to next column
	//row_addr <= ((op_counter == 2) && (col_addr == 127)) ? (row_addr + 1) : row_addr; 	// if all pixels in a row is finished, go to nex row
	
	// op_counter:
	// 0: generate read address for input image 
	// 1: save pixel read from input image into a register
	//	2: calculate first row row
	// 3: save pixel read from input image into a register
	// : calculate column column
	// if counter is 2, set it to 0
	
	if (rst) 
	begin
		row_addr <= 0;
		col_addr <= 0;
		op_counter <= 0;
	end		
	else 
	begin
		if(curr_state == BTN1_PRESS) begin
			
			col_addr <= (op_counter == 6) ? (col_addr + 1) : col_addr; // if a pixel's operation is finished, go to next column
			row_addr <= ((op_counter == 5) && (col_addr == 127)) ? (row_addr + 1) : row_addr; // if all pixels in a row is finished, go to nex row
			
			if(op_counter == 6)
				op_counter <= 0;
			else
				op_counter <= op_counter + 1;
		end
		else if(curr_state == OP1_FINISHED) 
		begin

			col_addr <= ((op_counter == 6) && (row_addr == 127)) ? (col_addr + 1) : col_addr;// if all pixels in a row is finished, go to nex row
			row_addr <= (op_counter == 6) ? (row_addr + 1) : row_addr;
			
			if(op_counter == 6)
				op_counter <= 0;
			else
				op_counter <= op_counter + 1;
		end
	end
end

// read pixel from input lena using its address
// op_counter:0 -> generate read address for input image 
always @ (*) 
begin
	if(curr_state == BTN1_PRESS)begin
		case(op_counter)
		4'd0: read_addr_op = {row_addr,col_addr-1};
		4'd2: read_addr_op = {row_addr,col_addr};
		4'd4: read_addr_op = {row_addr,col_addr+1};
		default: read_addr_op = 0;
		endcase
	end
	else if(curr_state == OP1_FINISHED)begin
		case(op_counter)
		4'd0: raddr_out_op = {row_addr-1,col_addr};
		4'd2: raddr_out_op = {row_addr,col_addr};
		4'd4: raddr_out_op = {row_addr+1,col_addr};
		default: raddr_out_op = 0;
		endcase
	end
end

// op_counter:1 -> save pixel read from input image into a register
always @(posedge clk or posedge rst) 
begin
	if(rst) begin
		i1 <= 0;
		i2 <= 0;
		i3 <= 0;
	end
	else begin
		if(curr_state == BTN1_PRESS)begin
			case(op_counter)
			4'd1:begin
				i1 <= data_out;
			end
			4'd3:begin
				i2 <= data_out;
			end
			4'd5:begin
				i3 <= data_out;
			end

			endcase
		end
		else if(curr_state == OP1_FINISHED)begin
			case(op_counter)
			4'd1:begin
				i1 <= rdata_out;
			end
			4'd3:begin
				i2 <= rdata_out;
			end
			4'd5:begin
				i3 <= rdata_out;
			end
			endcase
		end	
	end
end

//DATAPATH
// op_counter:2 -> negate the pixel
assign temp = i3 + (i2 << 1) + i1;
assign negated_pixel = temp >> 2;

// write data into output BRAM
always @ (posedge clk or posedge rst) 
begin
	if(rst) 
	begin
		wen_out   <= 0;
		waddr_out <= 0;
		wdata_out <= 0;
	end
	else 
	begin
		// if op_counter is 2, send negated pixel into output BRAM with its address
		if((op_counter == 6) && (curr_state == BTN1_PRESS) && col_addr > 1) begin
			wen_out   <= 1;
			waddr_out <= {row_addr,col_addr};
			wdata_out <= negated_pixel;
		end
		else if((op_counter == 6) && (curr_state == OP1_FINISHED)&& row_addr > 1) begin
			wen_out   <= 1;
			waddr_out <= {row_addr,col_addr};
			wdata_out <= negated_pixel;
		end
		else begin
			wen_out   <= 0;
			waddr_out <= 0;
			wdata_out <= 0;
		end
	end
end

// input BRAM address selection
// if the state is BTN1_PRESS; use read address of input image for operation; otherwise, use it for display
assign addr = (curr_state == BTN1_PRESS) ? read_addr_op : read_addr_in;

always@*
raddr_out = (curr_state == OP1_FINISHED) ? raddr_out_op : raddr_out_in;


//assign addr = (curr_state == OP1_FINISHED) ? read_addr_op : read_addr_in;

//------------------------------------------------------------------------------
// LEDs
//------------------------------------------------------------------------------
always @ (posedge clk or posedge rst) 
begin
	if(rst) begin
		LED1 <= 0;
		LED2 <= 0;
	end
	else begin
		// if current state is OP_FINISHED, turn on LED1
		if(curr_state == OP_FINISHED) begin
			LED1 <= 1;
			LED2 <= 0;		
		end
		// if BTN_EAST is pressed, turn on both LED1 and LED2
		else if(curr_state == BTN2_PRESS) begin
			LED1 <= 1;
			LED2 <= 1;
		end
		// otherwise, both LEDs should be OFF
		else begin
			LED1 <= 0;
			LED2 <= 0;
		end
	end
end

//------------------------------------------------------------------------------
// This always block generates read address and read pixel values from blockram
//------------------------------------------------------------------------------
// |            |   |             |
// |            |   |             |
// |            |   |             |
// | Input Img. |   | Output Img. |
// |            |   |             |
// |            |   |             |
// --------------   --------------
// 0           127 128           255
always @ (*)
begin
	// Read address generation for input (input image will be displayed at upper-left corner (128x128)
	if ((vcount < 10'd128) && (hcount < 10'd128))
		read_addr_in = {vcount[6:0], hcount[6:0]};
	else 
		read_addr_in = 14'd0; // Read address uses hcount and vcount from VGA controller as read address to locate currently displayed pixel
	
	// read address generation for output (output image will be displayed at next to input image (128x128)
	if ((vcount < 10'd128) && ((hcount >= 10'd128) && (hcount < 10'd256)))
		raddr_out_in = {vcount[6:0], hcount[6:0]};
	else
		raddr_out_in = 0;
	
	// Read pixel values 
	if (blank)
	begin	
		R = 1'b0;  // if blank, color outputs should be reset to 0 or black should be sent ot R,G,B ports
		G = 1'b0;  // if blank, color outputs should be reset to 0 or black should be sent ot R,G,B ports
		B = 1'b0;  // if blank, color outputs should be reset to 0 or black should be sent ot R,G,B ports
	end
	// if operation is finished or BTN2 is pressed, display input image
	else if ((vcount < 10'd128) && (hcount < 10'd128) && ((curr_state == OP_FINISHED) | (curr_state == BTN2_PRESS))) 
	begin
		R = data_out[7];  // pixel values are read here
		G = data_out[7];
		B = data_out[7];
	end
	// if BTN2 is pressed, display output image
	else if ((vcount < 10'd128) && ((hcount >= 10'd128) && (hcount < 10'd256)) && (curr_state == BTN2_PRESS)) begin
		R = rdata_out[7];  // pixel values are read here
		G = rdata_out[7];
		B = rdata_out[7];
	end
	else
	begin
		R = 1'b1; // outside of the image is white
		G = 1'b1; // outside of the image is white
		B = 1'b1; // outside of the image is white
	end
end

endmodule
