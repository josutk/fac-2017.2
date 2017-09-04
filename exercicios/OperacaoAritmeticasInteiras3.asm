.data

.text

main:
	addi $t1, $zero, 0x7000
	jal loop_shift
	add $t1, $t1,$t1
	li $v0, 10
	syscall
	
loop_shift:
	
	beq $t1, 0x70000, retorno
	sll $t1, $t1, 1
	
	j loop_shift

 
  retorno:
  	jr $ra 