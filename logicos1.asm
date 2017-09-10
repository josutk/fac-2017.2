.data
.text
	li $1, 222 # 0xde
	sll $1, $1, 24
	li $2, 173 # 0xad
	sll $2, $2, 16
	li $3, 190 # 0xbe
	sll $3, $3, 8
	li $4, 239 #ef
	or $1, $1, $2
	or $1, $1, $3
	or $1, $1, $4