/******************************************************************
* Description
*	This is a 2 to 1 multiplexer that can be parameterized in its bit-width.
*	1.0
******************************************************************/

module MUX_DATA_HAZARD
#(
	parameter NBits = 32
)
(
	input Selector_i,
	input [NBits-1:0] Mux_Data_0_i,
	input [NBits-1:0] Mux_Data_1_i,
	
	output reg [NBits-1:0] Mux_Output_o

);

	always@(Selector_i ,Mux_Data_1_i ,Mux_Data_0_i) begin
		if(Selector_i)
			Mux_Output_o = Mux_Data_1_i;
		else
			Mux_Output_o = Mux_Data_0_i;
	end

endmodule