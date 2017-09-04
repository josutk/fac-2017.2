.data
	
.text

	add $t0, $zero, $zero
	add $t3, $zero, $zero
	addi $t1,$zero,0x1000
	jal loop_add
	jal loop_shift
	
	 
	
loop_add:
	beq $t3 , 16, parada
	addi $t3, $t3,1
	addi $t0, $t0, 0x1000
	j loop_add
	
loop_shift:
	beq $t1,$t0, exit
	sll $t1, $t1,1
	j loop_shift

parada:
	jr $ra

exit :
	li $v0, 10
	syscall