.data
	caracter: .byte 'B' #Caracter ocupa apenas 1 byte, e vou imprimir o A
.text
	li $v0, 4 #imprime char ou string
	la $a0, caracter # caracter esta na memoria ram e agora eu vou passar pro registrador a0
	syscall #execute agora
	
	li $v0,10 # Encerra o programa
	syscall