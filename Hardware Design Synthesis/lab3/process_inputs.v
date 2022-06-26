module process_inputs (operand1, operand2, format, result, start);

input start;
input [7:0] operand1;
input [7:0] operand2;
input [3:0] format;

reg[4:0] mantissa1;
reg[4:0] mantissa2;

reg[3:0] exponent1;
reg[3:0] exponent2;

reg[5:0] mantisum;
reg[3:0] exponent;

output reg [8:0] result;

reg[2:0] temp;

always @ *
begin
   if (start && format[0] == 0)//fixed point
	begin
     result = operand1 + operand2;
	end
	else if (start && format[0] == 1)//floating point
	begin
		mantissa1 = {1'b1, operand1[7:4]};
		mantissa2 = {1'b1, operand2[7:4]};
		
		exponent1 = operand1[3:0];	
		exponent2 = operand2[3:0];	
		
		if(exponent1 == exponent2)
		begin
			mantisum = mantissa1 + mantissa2;
			mantisum = mantisum >> 1;
			exponent1 = exponent1 + 1;
			result[7:4] = mantisum[3:0];
			result[3:0] = exponent1[3:0];
		end
		else
		begin
			if(exponent1 > exponent2)
			begin
				temp = exponent1 - exponent2;
				exponent2 = exponent1;
				mantissa2 = mantissa2 >> temp;
				
				mantisum = mantissa1 + mantissa2;
				mantisum = mantisum >> 1;
				exponent2 = exponent2 + 1;
				result[7:4] = mantisum[3:0];
				result[3:0] = exponent2[3:0]; 
			end
			else
			begin
				temp = exponent2 - exponent1;
				exponent1 = exponent2;
				mantissa1 = mantissa1 >> temp;
				
				mantisum = mantissa1 + mantissa2;
				mantisum = mantisum >> 1;
				
				result[7:4] = mantisum[3:0];
				result[3:0] = exponent1[3:0]; 
			end
			//exponentler esit degilse exponentleri arttirip mantisleri kaydirmak lazim, bunun için loop gerekiyor
		end
	end
   else
     result = 0;
end

endmodule

