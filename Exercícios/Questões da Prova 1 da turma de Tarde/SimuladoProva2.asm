.text
main:  		addi $2, $0, 5
		syscall
		add $8, $0, $2
		addi $2, $0, 5
		syscall
		add $9, $0, $2
		addi $2, $0, 5
		syscall
		add $10, $0, $2
		addi $2, $0, 5
		syscall
		add $11, $0, $2
	
pesos:		sll $8, $8, 1		# nota1 * 2
		sll $9, $9, 2		# nota2 * 4
		sll $10, $10, 3		# nota3 *  8
		addi $12, $0, 10
		mul $11, $11, $12	# nota4 * 10
	
somaNotas:  	add $8, $8, $9
		add $8, $8, $10
		add $8, $8, $11
		add $20, $0, $8
		
divNotas:	addi $12, $0, 24
		div $20, $12
		mflo $8
		
compararResto:  	mfhi $12
		addi $13, $0, 5
		slt $14, $12, $13		# if ($12 < $13) true: 1 - false: 0
		beq $14, $0, pracima
		add $4, $0, $8 		# Caso seja true
		j mostrar
		
pracima:		addi $4, $8, 1		# Caso seja false

mostrar: 	addi $2, $0, 1
		syscall
		
		
