	.data
hello_world: .ascii "\n Hello World!\n"

	.text
	li $v0, 4
	la $a0, hello_world
	syscall