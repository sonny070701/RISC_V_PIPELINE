/******************************************************************
* Description
*	This module performs a sign extension operation that is need with
*	in instruction like andi and constructs the immediate constant.
* Version:
*	1.0
* Author:
*	Dr. José Luis Pizano Escalante
* email:
*	luispizano@iteso.mx
* Date:
*	16/08/2021
******************************************************************/
module Immediate_Unit
(   
	input [6:0] op_i,
	input [31:0]  Instruction_bus_i,
	
   output reg [31:0] Immediate_o
);


always@(op_i,Instruction_bus_i) begin

	if(op_i == 7'h13||op_i == 7'h03||op_i == 7'h67)
		Immediate_o = {{20{Instruction_bus_i[31]}},Instruction_bus_i[31:20]};// I formats
		
	else if(op_i==7'h37)
		Immediate_o = {{12{Instruction_bus_i[31]}},Instruction_bus_i[31:12]};// U format
		
	else if(op_i==7'h23)
		Immediate_o = {{{20{Instruction_bus_i[31]}},Instruction_bus_i[31:25]}, 
								Instruction_bus_i[11:7]};// S format	
	else if(op_i==7'h63)
		Immediate_o = {{{{{{19{Instruction_bus_i[31]}},Instruction_bus_i[31]},
								Instruction_bus_i[7]},Instruction_bus_i[30:25]}, Instruction_bus_i[11:8]},1'b0};// B format
	else 
		Immediate_o = {{{{{{11{Instruction_bus_i[31]}},Instruction_bus_i[31]},
								Instruction_bus_i[19:12]},Instruction_bus_i[20]}, Instruction_bus_i[30:21]},1'b0};//J format
end


endmodule // signExtend
