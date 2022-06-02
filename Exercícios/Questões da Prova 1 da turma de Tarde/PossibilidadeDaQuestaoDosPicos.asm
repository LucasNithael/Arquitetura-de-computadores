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
			
CasosDeRepico1:		beq $9, $10, repico
CasosDeRepico2:		beq $10, $11, repico
			j analiseDePicos
			
repico: 			addi $20, $20, 1
			j CasosDeRepico2
			
			
analiseDePicos:		slt $13, $8, $9	# if($8 < $9)
			slt $14, $10, $9	# if($10 < $9)
			and $15, $13, $14 # $15 <- $13 and $14
			slt $13, $9, $10
			slt $14, $11, $10
			and $16, $13, $14 # $16 <- $13 and $14
			slt $13, $10, $11
			slt $14, $12, $11
			and $17, $13, $14 # $17 <- $13 and $14
			
somaDeCasosDePico:	addi $4, $0, 'P'
			addi $2, $0, 11
			syscall
			addi $4, $0, 'i'
			addi $2, $0, 11
			syscall
			addi $4, $0, 'c'
			addi $2, $0, 11
			syscall
			addi $4, $0, 'o'
			addi $2, $0, 11
			syscall
			addi $4, $0, 's'
			addi $2, $0, 11
			syscall
			addi $4, $0, ':'
			addi $2, $0, 11
			syscall
			addi $4, $0, ' '
			addi $2, $0, 11
			syscall
			add $4, $15, $16
			add $4, $4, $17
			addi $2, $0, 1
			syscall
			addi $4, $0, '\n'
			addi $2, $0, 11
			syscall
			
QtdDeRepico:		addi $4, $0, 'R'
			addi $2, $0, 11
			syscall
			addi $4, $0, 'e'
			addi $2, $0, 11
			syscall
			addi $4, $0, 'p'
			addi $2, $0, 11
			syscall
			addi $4, $0, 'i'
			addi $2, $0, 11
			syscall
			addi $4, $0, 'c'
			addi $2, $0, 11
			syscall
			addi $4, $0, 'o'
			addi $2, $0, 11
			syscall
			addi $4, $0, 's'
			addi $2, $0, 11
			syscall
			addi $4, $0, ':'
			addi $2, $0, 11
			syscall
			addi $4, $0, ' '
			addi $2, $0, 11
			syscall
			add $4, $0, $20
			addi $2, $0, 1
			syscall