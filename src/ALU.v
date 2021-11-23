/******************************************************************
* Description
*	This is an 32-bit arithetic logic unit that can execute the next set of operations:
*		add

* This ALU is written by using behavioral description.
* Version:
*	1.0
* Author:
*	Dr. José Luis Pizano Escalante
* email:
*	luispizano@iteso.mx
* Date:
*	16/08/2021
******************************************************************/

module ALU 
(
	input [3:0] ALU_Operation_i,
	input signed [31:0] A_i,
	input signed [31:0] B_i,
	output reg Zero_o,
	output reg [31:0] ALU_Result_o
);

localparam ADD  = 4'b0000;
localparam SUB  = 4'b0001;
localparam LUI  = 4'b0010;
localparam ORI  = 4'b0011;
localparam SLLI = 4'b0100;
localparam SRLI = 4'b0101; 
localparam AND	 = 4'b0110;
localparam XOR  = 4'b0111;
localparam BEQ  = 4'b1000;
localparam BNE  = 4'b1001;
localparam BLT  = 4'b1010;
localparam SW   = 4'b1011;
localparam LW   = 4'b1100;
localparam JAL  = 4'b1101;
localparam JALR = 4'b1110;
   
   always @ (A_i or B_i or ALU_Operation_i)
     begin
		case (ALU_Operation_i)
			ADD:                             //ADD | ADDI
				ALU_Result_o = A_i + B_i;

			SUB:
				ALU_Result_o = A_i - B_i;
		
			LUI:
				ALU_Result_o = B_i << 12;
			
			ORI:										//OR | ORI
				ALU_Result_o = A_i | B_i;
				
			SLLI:										//SLL | SLLI
				ALU_Result_o = A_i << B_i;
														
			SRLI:										//SRL | SRLI
				ALU_Result_o = A_i >> B_i;
				
			AND:										//AND | ANDI
				ALU_Result_o = A_i & B_i;
			
			XOR:										//XOR | XORI
				ALU_Result_o = A_i ^ B_i;
				
			BEQ:
				ALU_Result_o = (A_i == B_i) ? 0: 1 ;
				
			BNE:
				ALU_Result_o = (A_i - B_i != 0) ? 0 : 1;
			
			BLT:
				ALU_Result_o = (A_i < B_i) ? 0 : 1;
			
			SW:
				ALU_Result_o = ( A_i + B_i );
				
			LW:
				ALU_Result_o = ( A_i + B_i );
				
			JAL:
				ALU_Result_o =  A_i;
			
			JALR:
				ALU_Result_o = A_i + B_i;
				
	
		default:
			ALU_Result_o = 0;
		endcase // case(control)
		
		Zero_o = (ALU_Result_o == 0) ? 1'b1 : 1'b0;
		
     end // always @ (A or B or control)	  
	  	  
endmodule // ALU