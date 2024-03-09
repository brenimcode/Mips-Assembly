.data #area para dados da memoria PRINCIPAL
	msg: .asciiz "Hello World!!" #mensagem a ser exibida
	
.text # Area para INSTRUCOES do programa


	li $v0, 4 #Instrução para imprimir string
	la $a0, msg #Transportar o msg para a0, indica o endereço em que esta a msg
	syscall  # Dar a ordem de impressao IMPRIME O QUE? o que estiver no registrador a0, na maioria
	# syscal é FAÇA.
	
