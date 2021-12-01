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
	input [31:0] B_in,
	input [31:0] immediate_in,
	input EX_flush,
	input [31:0] pc_in,
	
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
	output reg [31:0] muxb_out,
	output reg [31:0] B_out,
	output reg [31:0] immediate_out,
	output reg [31:0] pc_out
);

always@(negedge clk)
	begin
		if(EX_flush==0)
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
			B_out = B_in;
			immediate_out = immediate_in;
			pc_out = pc_in;

		end
		else
			begin
				Branch_out = 0;
				Mem_Read_out = 0;
				Mem_to_Reg_out = 0;
				Mem_Write_out = 0;
				Reg_Write_out = 0;
				jal_out = 0;
				jalr_out = 0;
				RD_out = 32'h0000000;
				ALU_Result_out = 32'h0000000;
				zero_out = 0;
				muxb_out = 32'h0000000;
				B_out = 32'h0000000;
				immediate_out = 32'h0000000;
				pc_out = 32'h0000000;
		end
	end

endmodule