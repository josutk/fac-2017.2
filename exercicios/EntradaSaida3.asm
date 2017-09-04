.data
	string:   .space  80 #aloca espaco para a string
	espaco: .ascii " " #escapo 
.text
	
main:
	jal ler_string
	li $t0,0  #inicializo com 0
	li $t3,0
	jal while_compare
	jal print_int
	j fim

ler_string: 

	la $a0, string #primeiro argumento é o endereço di input
	la $a1,80 #segundo argumento é o tamanho maximo da estring
	li $v0 ,8 #funcao do siscall que ler string
	syscall
	jr $ra #retorno a funcao pra quem chamou

print_string:
	la $a0, string
	li $v0,4 #funcao syscall para imprimir string
	syscall
	jr $ra

while_compare:
	bge $t0,80,fim_laco #se for maior do que 80 vai para fim
	lb $t1, string($t0)
	lb $t2, espaco
	addi $t0,$t0,1 #navega no laco
	beq $t1,$t2,conta_espaco
	j while_compare 


conta_espaco:
	addi $t3,$t3,1
	j while_compare

fim:
	li $v0, 10
	syscall

fim_laco:
	jr $ra


print_int:
	li $v0,1
	la $a0,($t3)
	syscall
	jr $ra
