.data
	string: .space 80
.text
	la $a0, string
	li $a1, 80
	li $v0, 8
	syscall
	
	la $s0, ($a0) #String carregada em S0
	la $t0, ($zero)
	
	jal conta_zeros
	
	li $v0, 1 #exibe caracter
	la $a0, ($s1)
	syscall
	
	li $v0, 10
	syscall
	
return:
	jr $ra

conta_zeros:
	beq $t0, 80, return
	lb $t1, string($t0)
	li $t2, 0x20 #Espaço em hexa
	beq $t1, $t2, incrementa
	addi $t0, $t0, 1
	j conta_zeros
	
incrementa:
	addi $s1, $s1, 1
	addi $t0, $t0, 1
	j conta_zeros
	
	
	
