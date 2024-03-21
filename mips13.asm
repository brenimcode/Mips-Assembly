.data
	msg: .asciiz "Bem vindo!!\n Insira o inteiro: "
	maior: .asciiz "Maior a 0!!\n"
	menor: .asciiz "Menor a 0!!\n"
	igual: .asciiz "Igual a 0!!\n"
		
.text
	li $v0, 4 #Imprime msg de boas vindas
	la $a0, msg
	syscall
	
	li $v0, 5
	syscall #leio o inteiro e armazeno em $v0
	
	move $t0, $v0 #copio o que esta em $v0 em $t0
	
	beq $t0, $zero, ImprimeIgual #Se $t0 == 0, execute a partir de IMPRIMEIGUAL
	blt $t0, $zero, ImprimeMenor #se $t0 < 0 execute a partir de IMprimemenor
	bgt $t0, $zero, ImprimeMaior	
	#criando os rotulos
	ImprimeIgual: 
		li $v0, 4 #Imprime msg de boas vindas
		la $a0, igual
		syscall
		
		li $v0, 10 #encerra o programa
		syscall
	ImprimeMenor:
		li $v0, 4 #Imprime msg de boas vindas
		la $a0, menor
		syscall
		
		li $v0, 10 #encerra o programa
		syscall	
	ImprimeMaior:
		li $v0, 4 #Imprime msg de boas vindas
		la $a0, maior
		syscall
		
		li $v0, 10 #encerra o programa
		syscall
	
	