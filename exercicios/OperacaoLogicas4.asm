.data
.text
	li $1, 0x55555555
	sll $2, $1, 1
	or $3, $2, $1
	and $4, $2, $1
	xor $5, $2, $1
