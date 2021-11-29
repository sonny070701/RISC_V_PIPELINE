//HAZARD DETECTION UNIT

module HAZARD_UNIT
(
	input clk,
	input ID_EX_MR,
	input[4:0] ID_EX_Rd,
	input[4:0] IF_ID_Rs1,
	input[4:0] IF_ID_Rs2,
	input[2:0] Control_Branches,
	
	output reg stall,
	output reg flush
);

always @(ID_EX_MR, IF_ID_Rs1, IF_ID_Rs2, ID_EX_Rd, Control_Branches) 

	 begin
	 
        if (ID_EX_MR == 1 && (( ID_EX_Rd == IF_ID_Rs1 ) || (ID_EX_Rd == IF_ID_Rs2)))
		  
            begin
               stall = 1'b1;					// stall 
            end
				
        else 
		  
            begin
               stall = 1'b0;					//continue
            end
	 end
			
always @(posedge clk)
	
		begin 
		
				if(Control_Branches)
			
					flush = 1'b1;				
				else
				
					flush = 1'b0;
		end

endmodule	
