.data
	msg: .asciiz "Bem vindo ao meu programa\n Forneça um inteiro: "
	msgPar: .asciiz "Par\n"
	msgImpar: .asciiz "Impar\n"
	
	
.text
	.main: # main é uma funçao implicita no programa
	
	la $a0, msg
	jal imprimeString #imprime o que esta em $a0
	jal leInteiro #ler inteiro
	move $a0, $v0
	jal ehImpar #ela usa como argumento o $a0
	beq $v0, $zero, imprimePar
	
	#caso contrario:
	la $a0, msgImpar
	jal imprimeString
	
	
	jal encerrar
	
	imprimePar:
		la $a0, msgPar
		jal imprimeString
		jal encerrar
	
	
	ehImpar: # funcao que verifica se o arumento $a0 é impar, retorna 1 se impar, 0 se par
		li $t0, 2 # t0 = 2
		div $a0, $t0 
		
		mfhi $v0 #resto da divisao de $a0 por 2
		jr $ra
	
	#funcao que recebe uma string em $a0 e a imprime
	imprimeString:	
		li $v0, 4
		syscall
		jr $ra
	#funcoa que le inteiro e retorna em $v0
	leInteiro:
		li $v0, 5
		syscall
		jr $ra
	encerrar:
		li $v0, 10 
		syscall
	
	
	
		
	