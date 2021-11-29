//JUAN PABLO GARCIA, SONNY CEJa
//PRIMER REGISTRO IF/ID

module IF_ID
(
	input clk,
	input enable,
	input IF_flush,
	input [31:0] instruction_in,
	input [31:0] pc_in,
	
	output reg [31:0] instruction_out,
	output reg [31:0] pc_out
);


always@(negedge clk)
	begin
		if(enable == 0)
			begin
				instruction_out = instruction_in;
				pc_out = pc_in;
			end
		else
		if(IF_flush == 1)
			instruction_out <= 0;
	end

endmodule