.data 
	intro: .asciiz "Ola, digite a idade: "
	saida: .asciiz "Sua idade eh: "
.text
	li $v0, 4 #impressao de string
	la $a0, intro #coloca a intro da memoria principal no registrador $a0
	syscall #imprimo
	
	li $v0, 5 # ler inteiro
	syscall #quando usuario der ENTER o valor armazena em v0
	
	#copia o valor de $v0 para outro registrador, para nao o perder
	move $t0, $v0 # Valor fornecido agora esta em t0
	
	li $v0, 4 #impressao de string
	la $a0, saida #coloca a SAIDA da memoria principal no registrador $a0
	syscall #imprimo
	
	li $v0, 1 #impressao de INT
	move $a0,$t0 #coloca o valor de  no registrador $a0
	syscall #imprimo
	