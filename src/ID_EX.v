//JUAN PABLO GARCIA, SONNY CEJa
//SEGUNDO REGISTRO ID/EX

module ID_EX
(
	input clk,
	input Branch_in,
	input Mem_Read_in,
	input Mem_to_Reg_in,
	input Mem_Write_in,
	input Reg_Write_in,
	input jal_in,
	input jalr_in,
	input ALU_Src_in,
	input [3:0] ALU_OP_in,
	input [4:0] Read_Data_1_in,
	input [4:0] Read_Data_2_in,
	input [31:0] A_in,
	input [31:0] B_in,
	input	[31:0] RD_in,
	input [31:0] Immediate_in,
		
	output reg Branch_out,
	output reg Mem_Read_out,
	output reg Mem_to_Reg_out,
	output reg Mem_Write_out,
	output reg Reg_Write_out,
	output reg jal_out,
	output reg jalr_out,

	output reg [31:0] RD_out,
	output reg [4:0] Read_Data_1_out,
	output reg [4:0] Read_Data_2_out,
	output reg [31:0] Immediate_out,
	output reg [3:0] ALU_OP_out,
	output reg ALU_Src_out,
	output reg [31:0] A_out,
	output reg [31:0] B_out
);						

always@(posedge clk)
	begin

	ALU_Src_out= ALU_Src_in;
	Branch_out = Branch_in;
	Mem_Read_out = Mem_Read_in;
	Mem_to_Reg_out = Mem_to_Reg_in;
	Mem_Write_out = Mem_Write_in;
	Reg_Write_out = Reg_Write_in;
	jal_out = jal_in;
	jalr_out = jal_in;
	RD_out = RD_in;
	A_out = A_in;
	B_out=B_in;
	Read_Data_1_out = Read_Data_1_in;
	Read_Data_2_out = Read_Data_2_in;
	Immediate_out = Immediate_in;
	ALU_OP_out = ALU_OP_in;
	
	end
	
endmodule