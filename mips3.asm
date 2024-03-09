.data
	#Valor inteiro na memoria ram, variaveis serao definidas
	idade: .word 17 #word tem 4 bytes, ele tem o tamanho do inteiro!
.text
	li $v0, 1 #carrega o valor 1 no registrador $v0. 1 é imprime int
	lw $a0, idade # Carrega o valor da variavel idade no registrador $a0, a0 e para parametro de sistema de IMPRESSAO nesse caso
	syscall #Faça