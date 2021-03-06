module Hazard_Values
(
	input enable,
	input Branch_in,
	input Mem_Read_in,
	input Mem_to_Reg_in,
	input Mem_Write_in,
	input Reg_Write_in,
	input jal_in,
	input jalr_in,
	input ALU_Src_in,
	
	output reg Branch_out,
	output reg Mem_Read_out,
	output reg Mem_to_Reg_out,
	output reg Mem_Write_out,
	output reg Reg_Write_out,
	output reg jal_out,
	output reg jalr_out,
	output reg ALU_Src_out
);

always@(Branch_in,Mem_Read_in,Mem_to_Reg_in,Mem_Write_in,Reg_Write_in,jal_in, jalr_in, ALU_Src_in, enable)
		begin 
			if (enable == 0)
				begin 
					ALU_Src_out= ALU_Src_in;
					Branch_out = Branch_in;
					Mem_Read_out = Mem_Read_in;
					Mem_to_Reg_out = Mem_to_Reg_in;
					Mem_Write_out = Mem_Write_in;
					Reg_Write_out = Reg_Write_in;
					jal_out = jal_in;
					jalr_out = jal_in;
				end 
			else 
				begin
					ALU_Src_out= 1'b0;
					Branch_out = 1'b0;
					Mem_Read_out = 1'b0;
					Mem_to_Reg_out = 1'b0;
					Mem_Write_out = 1'b0;
					Reg_Write_out = 1'b0;
					jal_out = 1'b0;
					jalr_out = 1'b0;
				end
end 
endmodule 	