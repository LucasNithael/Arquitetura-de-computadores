.text
main: 	addi $2, $0, 5
	syscall
	add $8, $0, $2
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	sub $10, $8, $2
	beq $10, $0, iguais
	srl $10, $10, 31
	beq $10, $0, maiorQ
	j menorQ
	
	
iguais:	add $4, $0, $8
	addi $2, $0, 1
	syscall
	addi $4, $0, '='
	addi $2, $0, 11
	syscall
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	addi $2, $0, 10
	syscall
	
maiorQ: 	add $4, $0, $8
	addi $2, $0, 1
	syscall
	addi $4, $0, '>'
	addi $2, $0, 11
	syscall
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	addi $2, $0, 10
	syscall

menorQ:    add $4, $0, $8
	addi $2, $0, 1
	syscall
	addi $4, $0, '<'
	addi $2, $0, 11
	syscall
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	addi $2, $0, 10
	syscall