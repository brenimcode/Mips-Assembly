.data
	msg: .asciiz "Bem vindo ao meu programa de WHILE!\n"
	espaco: .byte ' '
	
.text
	li $v0, 4 #impressao de msg
	la $a0, msg
	syscall 
	
	li $v0, 5 #ler inteiro
	syscall
	
	move $t0, $v0 #agora o meu inteiro est� em $t0
	move $t1, $zero #agora o 0 est� em $t1 e eu vou incrementalo
	
	while: #crio um rotulo enquanto
		li $v0,1 	 #imprimir inteiro
		move $a0, $t1
		syscall
		
		li $v0, 4 #impressao de ESPACO
		la $a0, espaco
		syscall 
		
		beq $t1, $t0, saida #Minha condi��o de parada � se o registrador $t1 que est� sendo $T1 ++ chega em 7
		
		
		
		addi $t1, $t1, 1
		j while  # entre aspas, a minha chamada recursiva, para voltar a linha 15 onde esta o rotulo while
	saida:
		li $v0, 10
		syscall
		
	