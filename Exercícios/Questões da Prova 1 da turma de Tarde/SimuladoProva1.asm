.text 
main:			addi $2, $0, 5
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
			addi $2, $0, 5
			syscall
			add $12, $0, $2
	
identificaPositivo:	srl $13, $8, 31
			beq $13, $0, soma1
			srl $13, $9, 31
			beq $13, $0, soma2
			srl $13, $10, 31
			beq $13, $0, soma3
			srl $13, $11, 31
			beq $13, $0, soma4
			srl $13, $12, 31
			beq $13, $0, soma5
			addi $4, $0, -1
			j mostrar

soma1:			add $4, $8, $0
soma2:			add $4, $4, $9 
soma3:			add $4, $4, $11
soma4:			add $4, $4, $10
soma5:			add $4, $4, $12
			
mostrar:			addi $2, $0, 1
			syscall