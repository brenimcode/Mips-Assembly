.text
	li $t0, 5 #carrega 5 no registrador $t0
	li $t1, 15 #carrega 5 no registrador $t1 (temporarios
	add $s0, $t0, $t1 #somou o conteudo de registradores t0 e t1 e atribuiu a s0
	addi $s1, $s0, 100 #soma imediatamente(usa apenas 2 registradores) o valor de $s0 com 100
	addi $s0,$zero ,7 # soma o conteudo de $zero(0) com 7 e atribui a $s0, basicamente ele faz o que o li t0 faz
	