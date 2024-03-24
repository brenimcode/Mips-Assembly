.data
	texto: .asciiz "Aula de ASSEMBLY,DIVISAO de INTEIROS"
.text
	li $v0, 4
	la $a0, texto
	syscall
	
	li $t1, 3
	li $t0, 10
	div $t0,$t1 #Realiza divisao inteira t0/t1, parte inteira para lo, RESTO vai para hi
	# para usar o que está nesses registradores, devemos mover o conteudo 
	
	mflo $s0 #Move o conteudo de lo para s0
	
	mfhi $s1 # move o conteudo de hi para s1
	
	srl $s2,$t0,1 #Shift RIGHT de t0 uma vez, e armazena em s2, divide o 10 por 2^1 = 5
	
	
	
			
	