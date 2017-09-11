.data
.text
	li $v0, 5
	syscall
	la $s0, ($v0)
	
	li $v0, 5
	syscall
	la $s1, ($v0)
	
	li $v0, 5
	syscall
	la $s2, ($v0)
	
	
	mul $s3,$s0,$s1
	
	li $v0, 1
	la $a0, ($s3)
	syscall
	
	div $s4, $s3, $s2
	
	li $v0, 1
	la $a0, ($s4)
	syscall
	