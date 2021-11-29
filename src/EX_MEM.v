//EX_MEM
//JUAN PABLO GARCIA, SONNY CEJA
//Tercer registro de etapa execute a memory

module EX_MEM
(
	input clk,
	input Branch_in,
	input Mem_Read_in,
	input Mem_to_Reg_in,
	input Mem_Write_in,
	input Reg_Write_in,
	input jal_in,
	input jalr_in,
	input [31:0] RD_in,
	input [31:0] ALU_Result_in,
	input zero_in,
	input [31:0] muxb_in,
	
	output reg Branch_out,
	output reg Mem_Read_out,
	output reg Mem_to_Reg_out,
	output reg Mem_Write_out,
	output reg Reg_Write_out,
	output reg jal_out,
	output reg jalr_out,

	output reg [31:0] RD_out,
	output reg [31:0] ALU_Result_out,
	output reg zero_out,
	output reg [31:0] muxb_out
);

always@(negedge clk)
	begin
	
	Branch_out = Branch_in;
	Mem_Read_out = Mem_Read_in;
	Mem_to_Reg_out = Mem_to_Reg_in;
	Mem_Write_out = Mem_Write_in;
	Reg_Write_out = Reg_Write_in;
	jal_out = jal_in;
	jalr_out = jal_in;
		RD_out = RD_in;
	ALU_Result_out = ALU_Result_in;
	zero_out = zero_in;
	muxb_out = muxb_in;

	end

endmodule