addi s0, zero, 3	## Se asigna a s0 la cantidad de discos iniciales 
add s1, zero, s0	## usaremos t0 como auxiliar para la función
			## Usaremos S1 para la cantidad de movimientos totales 
jal ra, colocar_memoria
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

colocar_memoria:  ## inicializar la memoria inicial

jalr zero, ra,0 # regresar 