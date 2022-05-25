.text
main: 	addi $2, $0, 5
	syscall
	add $8, $0, $2
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	addi $2, $0, 5
	syscall
	add $10, $0, $2
	
	mul $9, $9, 2
	mul $10, $10, 3
	add $8, $8, $9
	add $8, $8, $10
	
	addi $9, $0, 6
	div  $8, $9
	mflo $10
	
	addi $11, $0, 60
	sub $11, $10, $11
	srl $11, $11, 31
	
	beq $11, $0, aprovado
	addi $4, $0, 'R'
	j mostrar
	
aprovado:  addi $4, $0, 'A'

mostrar:   addi $2, $0, 11
	syscall

fim: 	addi $2, $0, 10
	syscall
	