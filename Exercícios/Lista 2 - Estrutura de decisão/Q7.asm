.text
main:	addi $2, $0, 5
	syscall
	add $8, $0,, $2
	
	addi $9, $0, 100
	div $8, $9
	mfhi $9
	bne $9, $0, etapa2
	
	addi $10, $0, 400
	div $8, $10
	mfhi $10
	bne $10, $0, naoBi
	
etapa2:	addi $11, $0, 4
	div $8, $11
	mfhi $11
	bne $11, $0, naoBi
	j anoBi
			
naoBi: 	addi $4, $0, 'N'
	addi $2, $0, 11
	syscall
	addi $2, $0, 10
	syscall
	
anoBi:	addi $4, $0, 'S'

mostrar:	addi $2, $0, 11
	syscall
	

	
