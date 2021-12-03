addi s0, zero, 5
addi s1, zero,10
add s2, zero, s0
beq s0,s2, b1
addi s0, zero, 10
whoops:
add s0, s1,s0
add s0, s1,s0
add s0, s1,s0
add s0, s1,s0
add s0, s1,s0
add s0, s1,s0
add s0, s1,s0
add s0, s1,s0
add s0, s1,s0
add s0, s1,s0
add s0, s1,s0
add s0, s1,s0
b1:
addi s0, zero, 3
add s0, s2,s0
bne s1,s2, whoops
