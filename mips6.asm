.text
	li $t0, 12
	addi $t1, $zero, 10
	
	sll $s1, $t1,5
	mul $s0,$t0,$t1
	
	li $v0, 1 #impressao de inteiro
	move $a0, $s0 #Movimentar entre registradores, agora eu tenho o valor de $a0 com o inteiro que quero imprimir
	syscall 
	