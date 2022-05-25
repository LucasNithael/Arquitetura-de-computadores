.text 
main: 	addi $2, $0, 5
	syscall
	add $4, $0, $2
primo:	addi $9, $9, 1
	jal fat
ret1: 	add $4, $0, $9
	addi $2, $0, 1
	syscall
			
	addi $2, $0, 10
fim: 	syscall

fat:	add $2, $4, $0
	addi $8, $4, -1
mtl:	div $2, $8
	mfhi $11
	beq $11, $0, primo

	addi $8, $8, -1
	bne $8, $0, mtl  
	jr $31