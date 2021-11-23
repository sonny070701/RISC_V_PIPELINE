//HAZARD DETECTION UNIT

module HAZARD_UNIT
(
	input ID_EX_MR,
	input[4:0] IF_ID_Rs1,
	input[4:0] IF_ID_Rs2,
	input[4:0] ID_EX_Rd,
	
	output reg[1:0] stall
);

always @(ID_EX_MR, IF_ID_Rs1, IF_ID_Rs2, ID_EX_Rd) 

	 begin
	 
        if (ID_EX_MR == 1 && (( ID_EX_Rd == IF_ID_Rs1 ) || (ID_EX_Rd == IF_ID_Rs2)))
		  
            begin
               stall = 1;
            end
				
        else 
		  
            begin
               stall = 0;
            end
			end

endmodule