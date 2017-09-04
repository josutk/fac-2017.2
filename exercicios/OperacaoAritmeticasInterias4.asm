.data
.text

	addi $t0, $zero, 1
	addi $t1,$zero,2
	addi $t2, $zero, $zero
	addi $t3, $zero, $zero
loop_tres:
	beq $t3,3 retorno
	addi $t3, $t3, 1
	j loop_tres


loop_cinco:
	beq $t2, 5, retorno
	addi $t3, $t3, 1
	j loop_cinco

retorno:
	jr $ra