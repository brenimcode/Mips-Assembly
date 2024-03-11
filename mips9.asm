#escreva programa que le o nome e o imprime
.data
	pergunta: .asciiz "Qual teu nome? "
	saudacao: .asciiz "Ola, "
	nome: .space 25 #nome é  onde vou armazenar minha string, o .space especifica tamanho maximo
.text
	li $v0,4 #impressao da pergunta
	la $a0, pergunta
	syscall
	
	#leitura da string(nome)
	li $v0, 8 #ler string
	la $a0, nome #coloca em a0 o nome, nome perdeu-se de a0, porem está na memoria RAM
	la $a1, 25 #informa o tamanho que quer ler.
	syscall
	
	
	li $v0,4 #impressao da saudacao
	la $a0, saudacao
	syscall
	
	#impressao de nome
	
	li $v0,4 #impressao da saudacao
	la $a0, nome
	syscall
	
	