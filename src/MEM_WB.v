//MEM_WB

module MEM_WB
(
	input clk,
	
	input Mem_to_Reg_in,
	input Reg_Write_in,
	input [31:0] Read_Data_in,
	input [31:0] ALU_Result_in,
	input [31:0] RD_in,


	output reg Mem_to_Reg_OUT,
	output reg Reg_Write_out,
	output reg [31:0] Read_Data_out,
	output reg [31:0] ALU_Result_out,
	output reg [31:0] RD_out

);


always@(negedge clk)
	begin
		
		Mem_to_Reg_OUT = Mem_to_Reg_in;
		Reg_Write_out = Reg_Write_in;
		RD_out = RD_in;
		Read_Data_out = Read_Data_in;
		ALU_Result_out = ALU_Result_in;


	end

endmodule