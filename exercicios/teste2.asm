	.text
	
main:
	li $a0, 2 #enfia 2 no argumento pra função
	jal calcular_algo # multiplica por 12 o argumento
	la $a0, ($v0) # bota o resultado do calculo em a1
	jal exibir_resposta # mostra o resultado
	jal fim #acaba o programa
	
calcular_algo:
	mul $v0, $a0, 12 #multiplica por 12 o argumento
	addi $v0, $v0, 10 #Soma mais 10, pq foda-se
	subi $v0, $v0, 2 # subtrai 2 pq foda-se
	jr $ra # retorna pra main
	
exibir_resposta:
	li $v0, 1 # coloca 4 pra chamar o syscall e printar na tela
	syscall 
	jr $ra #volta pra main
	
fim:
	li $v0, 10 #chamada para encerrar o programa
	syscall