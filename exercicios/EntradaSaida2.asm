	.data

	.text

main:
	jal ler_inteiro #chama a funcao de ler um inteiro
	la $t0, ($v0) #armazena o retorno no registrador t0
	jal imprimir_inteiro # imprime o valor inteiro
	j fim 

ler_inteiro: #ler um valor inteiro
	li $v0, 5 #aciona a função de leitura de interio
	syscall 
	jr $ra

imprimir_inteiro: #imprime um valor inteiro
	li $v0, 1 #aciona a funcao do syscal de imprimir um interio
	la $a0, ($t0) #carrega em a0 o  valor de 0
	syscall
	jr $ra
fim:
	li $v0, 10	# código para encerrar o programa
	syscall		# executa a chamada do SO para encerrar
	
