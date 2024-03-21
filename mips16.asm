.data
	msg: .asciiz "Bem vindo a Função phi de Euler! "
	
.text
	.main: #rotulo main principal
		
		li $a0, 5
		#li $a1, 6
		jal euler_phi
		volta:
		move $a0, $v0
		
		jal imprimeInteiro
		
		jal encerrarPrograma
		
		
	imprimeInteiro: #rotulo para imprimir um inteiro, imprime o que está em $a0
		li $v0, 1
		syscall
		jr $ra
		
	encerrarPrograma:
		li $v0, 10
		syscall
		jr $ra
		
	mdc: #Espera como argumento $a0, $a1, retorna em $v0
		beq $a1, $zero,mdc2  #se for $a1 for igual a 0 retorne o $a0 em $v0
	
		# se nao, ele vai fazer o $a0 receber $a1, e $a1 recebe o resto da div de a por b
		div $a0, $a1 #divisao de $a0 por $a1
		move $a0, $a1 # A0 recebe a1
		mfhi $a1 # $a1 recebe o resto da divisao
		
		#chamada recursiva a mdc
		j mdc
		# Caso base para quando $a1 é zero
		mdc2:
    			move $v0, $a0          # Retorna $a0 em $v0
    			jr $ra                 # Retorna para o endereço de retorno
			
	
	euler_phi:
    		li $t1, 1 # CONTADOR.
    		li $t0, 1 # IGUALDADE 
    		li $t2, 1 # X PARA MDC(N,X) 
    		move $t4, $a0 # valor de N para garantir que ele nao mude durante a execucao
    		while:
    			beq $t2, $t4, saida #condição de parada do while
    			#passo argumentos para mdc e chamo:
    			move $a1, $t2 # X
    			move $a0, $t4 # N
    			jal mdc
    			
    			# $v0 esta armazenando o resultado de mdc de a e b
    			
    			
    			beq $v0, $t0,incrementa # se $v0(mdc(a,b) == 1 execute a partir de incrementa
    			
    			addi $t2, $t2, 1 #incremento o $t2 para parar quando for iguala $a0
    			j while
    			
    			incrementa:
    				addi $t1,$t1, 1 # $t1 ++
    				addi $t2, $t2, 1
    				j while
    			
    		saida:
    			move $v0, $t1 #Retorna em v0 o que esta em t1
    			j volta
    			
	
	