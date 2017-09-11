	.data
eh_primo: .ascii "eh primo"
nao_primo: .ascii "nao eh primo"
	.text
		li $a0, 2
		jal is_prime


is_prime:
	li $t0, 2 # Contador inicial de divisores
	li $v0, 0 # resultado se é primo ou não
	la $a3, nao_primo
	slt $t1, $a0, $t0
	bne $t1, $zero, exibir_resultado # argumento menor que 2, não é primo
	jal for #contar divisores
	
for:
	sle $t1, $a0, $t0
	bne $t1, $zero, define_prime

	
	
		 	