.data
	introducao: .asciiz "\nInsira um valor REAL: "
	PI: .float 3.141592 #esta na ram
	zero: .float 0.0
.text
	li $v0, 2 #sistema se prepare para impressao de FLOAT
	lwc1 $f12, PI #no caso do FLOAT os registradores ficam em COPROC1, SEMPRE COLOCAR float EM $f12 
	syscall
	
	
	li $v0, 4
	la $a0, introducao
	syscall
	
	li $v0,6 #ler um float
	syscall
	
	lwc1 $f1, zero #f1 que é registrador de coprocessador 1 agora tem o valor 0
	
	add.s $f12,$f0,$f1
	
	li $v0, 2
	syscall