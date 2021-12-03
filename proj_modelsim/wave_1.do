onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group PC_out -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/Fetch_Decode_Reg/pc_out
add wave -noupdate -group ALU /RISC_V_Single_Cycle_TB/DUV/ALU_UNIT/ALU_Operation_i
add wave -noupdate -group ALU -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/ALU_UNIT/A_i
add wave -noupdate -group ALU -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/ALU_UNIT/B_i
add wave -noupdate -group ALU /RISC_V_Single_Cycle_TB/DUV/ALU_UNIT/Zero_o
add wave -noupdate -group ALU -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/ALU_UNIT/ALU_Result_o
add wave -noupdate -group MUX_A_3_1 -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/Multiplexer_A/Selector_i
add wave -noupdate -group MUX_A_3_1 -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/Multiplexer_A/Mux_Data_0_i
add wave -noupdate -group MUX_A_3_1 -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/Multiplexer_A/Mux_Data_1_i
add wave -noupdate -group MUX_A_3_1 -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/Multiplexer_A/Mux_Data_2_i
add wave -noupdate -group MUX_A_3_1 -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/Multiplexer_A/Mux_Output_o
add wave -noupdate -group FORWARD /RISC_V_Single_Cycle_TB/DUV/Forward_UNIT/Fwd_A
add wave -noupdate -group FORWARD /RISC_V_Single_Cycle_TB/DUV/Forward_UNIT/Fwd_B
add wave -noupdate -group MUX_B_3_1 -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/Multiplexer_B/Selector_i
add wave -noupdate -group MUX_B_3_1 -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/Multiplexer_B/Mux_Data_0_i
add wave -noupdate -group MUX_B_3_1 -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/Multiplexer_B/Mux_Data_1_i
add wave -noupdate -group MUX_B_3_1 -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/Multiplexer_B/Mux_Data_2_i
add wave -noupdate -group MUX_B_3_1 -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/Multiplexer_B/Mux_Output_o
add wave -noupdate -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/Fetch_Decode_Reg/instruction_out
add wave -noupdate -group s0 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s0_fp/enable
add wave -noupdate -group s0 -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s0_fp/DataInput
add wave -noupdate -group s0 -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s0_fp/DataOutput
add wave -noupdate -group s1 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s1/enable
add wave -noupdate -group s1 -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s1/DataInput
add wave -noupdate -group s1 -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s1/DataOutput
add wave -noupdate -group S2 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s2/enable
add wave -noupdate -group S2 -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s2/DataInput
add wave -noupdate -group S2 -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s2/DataOutput
add wave -noupdate -group S3 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s3/enable
add wave -noupdate -group S3 -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s3/DataInput
add wave -noupdate -group S3 -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_s3/DataOutput
add wave -noupdate -group t0 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_t0/enable
add wave -noupdate -group t0 -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_t0/DataInput
add wave -noupdate -group t0 -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_t0/DataOutput
add wave -noupdate -group t1 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_t1/enable
add wave -noupdate -group t1 -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_t1/DataInput
add wave -noupdate -group t1 -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_t1/DataOutput
add wave -noupdate -group t2 /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_t2/enable
add wave -noupdate -group t2 -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_t2/DataInput
add wave -noupdate -group t2 -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/REGISTER_FILE_UNIT/Register_t2/DataOutput
add wave -noupdate -group {ALU CONTROL} /RISC_V_Single_Cycle_TB/DUV/ALU_CONTROL_UNIT/ALU_Operation_o
add wave -noupdate -group {ALU CONTROL} /RISC_V_Single_Cycle_TB/DUV/ALU_CONTROL_UNIT/funct7_i
add wave -noupdate -group {ALU CONTROL} /RISC_V_Single_Cycle_TB/DUV/ALU_CONTROL_UNIT/ALU_Op_i
add wave -noupdate -group {ALU CONTROL} /RISC_V_Single_Cycle_TB/DUV/ALU_CONTROL_UNIT/funct3_i
add wave -noupdate -group CONTROL_UNIT -radix hexadecimal /RISC_V_Single_Cycle_TB/DUV/CONTROL_UNIT/OP_i
add wave -noupdate -group CONTROL_UNIT /RISC_V_Single_Cycle_TB/DUV/CONTROL_UNIT/Branch_o
add wave -noupdate -group CONTROL_UNIT /RISC_V_Single_Cycle_TB/DUV/CONTROL_UNIT/Mem_Read_o
add wave -noupdate -group CONTROL_UNIT /RISC_V_Single_Cycle_TB/DUV/CONTROL_UNIT/Mem_to_Reg_o
add wave -noupdate -group CONTROL_UNIT /RISC_V_Single_Cycle_TB/DUV/CONTROL_UNIT/Mem_Write_o
add wave -noupdate -group CONTROL_UNIT /RISC_V_Single_Cycle_TB/DUV/CONTROL_UNIT/ALU_Src_o
add wave -noupdate -group CONTROL_UNIT /RISC_V_Single_Cycle_TB/DUV/CONTROL_UNIT/Reg_Write_o
add wave -noupdate -group CONTROL_UNIT /RISC_V_Single_Cycle_TB/DUV/CONTROL_UNIT/ALU_Op_o
add wave -noupdate -group CONTROL_UNIT /RISC_V_Single_Cycle_TB/DUV/CONTROL_UNIT/jal_o
add wave -noupdate -group CONTROL_UNIT /RISC_V_Single_Cycle_TB/DUV/CONTROL_UNIT/jalr_o
add wave -noupdate -group DECODE/EXECUTE /RISC_V_Single_Cycle_TB/DUV/Decode_Execute_Reg/enable
add wave -noupdate -group DECODE/EXECUTE /RISC_V_Single_Cycle_TB/DUV/Decode_Execute_Reg/ALU_Src_in
add wave -noupdate -group DECODE/EXECUTE /RISC_V_Single_Cycle_TB/DUV/Decode_Execute_Reg/Branch_in
add wave -noupdate -group DECODE/EXECUTE /RISC_V_Single_Cycle_TB/DUV/Decode_Execute_Reg/jal_in
add wave -noupdate -group DECODE/EXECUTE /RISC_V_Single_Cycle_TB/DUV/Decode_Execute_Reg/jalr_in
add wave -noupdate -group DECODE/EXECUTE /RISC_V_Single_Cycle_TB/DUV/Decode_Execute_Reg/Mem_Read_in
add wave -noupdate -group DECODE/EXECUTE /RISC_V_Single_Cycle_TB/DUV/Decode_Execute_Reg/Mem_to_Reg_in
add wave -noupdate -group DECODE/EXECUTE /RISC_V_Single_Cycle_TB/DUV/Decode_Execute_Reg/Mem_Write_in
add wave -noupdate -group DECODE/EXECUTE /RISC_V_Single_Cycle_TB/DUV/Decode_Execute_Reg/Reg_Write_in
add wave -noupdate -group DECODE/EXECUTE /RISC_V_Single_Cycle_TB/DUV/Decode_Execute_Reg/ALU_Src_out
add wave -noupdate -group DECODE/EXECUTE /RISC_V_Single_Cycle_TB/DUV/Decode_Execute_Reg/Branch_out
add wave -noupdate -group DECODE/EXECUTE /RISC_V_Single_Cycle_TB/DUV/Decode_Execute_Reg/jal_out
add wave -noupdate -group DECODE/EXECUTE /RISC_V_Single_Cycle_TB/DUV/Decode_Execute_Reg/jalr_out
add wave -noupdate -group DECODE/EXECUTE /RISC_V_Single_Cycle_TB/DUV/Decode_Execute_Reg/Mem_Read_out
add wave -noupdate -group DECODE/EXECUTE /RISC_V_Single_Cycle_TB/DUV/Decode_Execute_Reg/Mem_to_Reg_out
add wave -noupdate -group DECODE/EXECUTE /RISC_V_Single_Cycle_TB/DUV/Decode_Execute_Reg/Mem_Write_out
add wave -noupdate -group DECODE/EXECUTE /RISC_V_Single_Cycle_TB/DUV/Decode_Execute_Reg/Reg_Write_out
add wave -noupdate -group HAZARD_UNIT /RISC_V_Single_Cycle_TB/DUV/HAZARD_UNIT/ID_EX_MR
add wave -noupdate -group HAZARD_UNIT /RISC_V_Single_Cycle_TB/DUV/HAZARD_UNIT/ID_EX_Rd
add wave -noupdate -group HAZARD_UNIT /RISC_V_Single_Cycle_TB/DUV/HAZARD_UNIT/IF_ID_Rs1
add wave -noupdate -group HAZARD_UNIT /RISC_V_Single_Cycle_TB/DUV/HAZARD_UNIT/IF_ID_Rs2
add wave -noupdate -group HAZARD_UNIT /RISC_V_Single_Cycle_TB/DUV/HAZARD_UNIT/stall
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {10 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {26 ps}
