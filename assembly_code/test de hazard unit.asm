hola: addi s3, zero, 10
addi s0 zero, 0
addi s0 zero, 0
addi s0 zero, 0
lui s0, 0x10010
addi s1, zero, 32
sw s1, 0(s0)
lw s2, 0(s0)
add a0, a0,s1
addi s0, s1, 5
addi s1, s0, 1
addi s1, zero, 1
bne s1, s0, xd
addi s0 zero, 0
addi s0 zero, 0
addi s0 zero, 0
xd: addi s2, s1, 100
jal hola