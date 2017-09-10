.data
.text
	ori $1, $0, 0x01
	la $s1, ($1)
	li $t1, 32
	
preencher:
	la $t0, ($s1)
	sll $t0, $t0, 1
	or $s1, $s1, $t0
	subi $t1, $t1, 1
	bne $t1, $zero, preencher
	la $1, ($s1)