	.data
	
	nao_primo: .asciiz "nao eh primo"
	eh_primo: .asciiz "eh primo"
	
	.text
		
		li $s0, 23 # valor pra vericar primidade
		li $a0, 2 #contador
	
is_prime:
	la $a1, ($s0) # numero
	beq $a0, $a1, main # contador == numero, é primo
	div $t1, $a1, $a0 # divisão num/contador
	mfhi $t2 # pega o resto
	addi $a0, $a0, 1 #incrementa o contador
	beqz $t2, main2 #caso seja dividor, pei!
	j is_prime

main:
	li $v0, 4
	la $a0, eh_primo
	syscall
	li $v0, 10
	syscall
main2:
	li $v0, 4
	la $a0, nao_primo
	syscall
	li $v0, 10
	syscall
	
	
	
	
		
	