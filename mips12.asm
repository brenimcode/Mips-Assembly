.data
	msg: .asciiz "Bem vindo ao programa teste paridade!\n Insira o numero inteiro: "
	par: .asciiz "O numero eh par"
	impar: .asciiz "O numero eh impar"
.text
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 5 #ler inteiro
	syscall
	
	addi $t1,$zero,2 #Adicionando 2 ao t1
	#li $t1, 2 # colocando valor 2 ao t1
	#syscall
	
	div $v0,$t1
	mfhi $t2 #adicionando o resto da div em $t2
	# Se t0%2 == 0
	
	beq $t2, $zero, imprimePar # Se t0%2 for igual a 0 é par
	li $v0, 4
	la $a0, impar
	syscall
	
	#encerrar
	li $v0,10
	syscall
	
	imprimePar:
		li $v0, 4
		la $a0, par
		syscall
	
	
	 
	
	
	