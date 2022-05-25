.text 
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	addi $2, $0, 5
	syscall
	
	
	#Media Ponderada
	sll $8, $8, 1	#$8 x 2
	sll $10, $9, 1	#$9 x 2
	add $10, $10, $9	#$9 + $9 para ficar multiplicado por 3
	add $8, $8, $10	#$8 <- $8 + $9
	addi $9, $0, 5
	div $8, $9
	mflo $11		#Quociente'
	add $4, $0, $11
	mfhi $12		#Resto
	
	#Calcular media com desconto pelas faltas
	div $2, $9		#$2 / 5
	mflo $13			#Quociente'' de $2 / 5
	beq $13, $0, mostrar
	mul $4, $13, 10		#Quociente'' x 10
	sub $15, $11, $4		#(Quociente'' x 10) - Quociente'
	add $4, $0, $15
	
mostrar: addi $2, $0, 1
	syscall
	addi $4, $0, ','
	addi $2, $0, 11
	syscall
	add $4, $0, $12
	addi $2, $0, 1
	syscall