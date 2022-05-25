.text
main: 	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	
	sub $9, $8, $2
	
	srl $9, $9, 31
	
	bne $9, $0, menor
	add $4, $0, $2
	j mostrar
	
menor:  	add $4, $0, $8

mostrar:	addi $2, $0, 1
	syscall
	
fim:	addi $2, $0, 10
	syscall