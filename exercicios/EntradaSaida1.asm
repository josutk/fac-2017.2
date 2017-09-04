# Hello, World
	.data
hello_world: .ascii "\nAlo mundo!\n" #string a ser apresentada

	.text

	li $v0, 4 #escolhe o serviço a ser acionado
	la $a0, hello_world #carrega o valor desejado no argumento no registrador
	syscall
	
	
