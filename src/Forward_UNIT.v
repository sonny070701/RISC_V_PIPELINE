//FW_U

module Forward_UNIT
(
	input[4:0] ID_EX_Rs1, 
	input[4:0] ID_EX_Rs2, 
	input[4:0] EX_MEM_Rd, 
	input EX_MEM_RW, 
	input MEM_WB_RW,
	input[4:0]MEM_WB_Rd,
	
	output reg[1:0] Fwd_A, Fwd_B
);

always @(ID_EX_Rs1, EX_MEM_Rd, EX_MEM_RW, MEM_WB_RW, MEM_WB_Rd)
    begin
        if(EX_MEM_RW && (EX_MEM_Rd != 0) && (EX_MEM_Rd == ID_EX_Rs1))
            begin
                Fwd_A = 2'b10;
            end
				
        else if(MEM_WB_RW && (MEM_WB_Rd != 0) && (MEM_WB_Rd == ID_EX_Rs1))
		  
            begin
                Fwd_A = 2'b01;
            end
				
        else 
		  
            begin
                Fwd_A = 2'b00;
            end
	end

always @(ID_EX_Rs2, EX_MEM_Rd, EX_MEM_RW, MEM_WB_RW, MEM_WB_Rd)
    begin
        if(EX_MEM_RW && (EX_MEM_Rd != 0) && (EX_MEM_Rd == ID_EX_Rs2))
            begin
                Fwd_B = 2'b10;
            end
				
        else if(MEM_WB_RW && (MEM_WB_Rd != 0) && (MEM_WB_Rd == ID_EX_Rs2))
		  
            begin
                Fwd_B = 2'b01;
            end
				
        else 
		  
            begin
                Fwd_B = 2'b00;
            end
    end

endmodule