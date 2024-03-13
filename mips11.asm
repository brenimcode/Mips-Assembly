.data
	msg: .asciiz "Mensagem Teste"
.text
	li $v0, 4
	la $a0, msg
	syscall