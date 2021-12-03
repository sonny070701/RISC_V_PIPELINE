module FLIP_FLOP
(
	input clk,
	input enable,
	input [31:0]DATA,

	output reg [31:0]DATA_O
);


always@(negedge clk)
	begin
		
		if(enable == 1)

			DATA_O = DATA;

	end

endmodule