.text
main:		addi $2, $0, 5
		syscall
		add $8, $0, $2
		addi $2, $0, 5
		syscall
		add $9, $0, $2
		addi $2, $0, 5
		syscall
	
verificarAnoBi:	addi $10, $0, 100
		div $2, $10
		mfhi $10
		bne $10, $0, etapa2
	
		addi $11, $0, 400
		div $2, $11
		mfhi $11
		bne $11, $0, naoBi
	
	etapa2:	addi $12, $0, 4
		div $2, $12
		mfhi $12
		bne $12, $0, naoBi
		j anoBi
			
naoBi: 		addi $10, $0, 1
		addi $11, $0, 2
		addi $12, $0, 3
		addi $13, $0, 4
		addi $14, $0, 5
		addi $15, $0, 6
		addi $16, $0, 7
		addi $17, $0, 8
		addi $18, $0, 9
		addi $19, $0, 10
		addi $20, $0, 11
		addi $21, $0, 12
		
		beq $9, $10, janeiro
		beq $9, $11, Fevereiro
		beq $9, $12, Marco
		beq $9, $13, Abril
		beq $9, $14, Maio
		beq $9, $15, Junho
		beq $9, $16, Julho
		beq $9, $17, Agosto
		beq $9, $18, Setembro
		beq $9, $19, Outubro
		beq $9, $20, Novembro
		beq $9, $21, Dezembro
		j invalido

	
anoBi:		addi $10, $0, 1
		addi $11, $0, 2
		addi $12, $0, 3
		addi $13, $0, 4
		addi $14, $0, 5
		addi $15, $0, 6
		addi $16, $0, 7
		addi $17, $0, 8
		addi $18, $0, 9
		addi $19, $0, 10
		addi $20, $0, 11
		addi $21, $0, 12
		
		beq $9, $10, janeiroBi
		beq $9, $11, FevereiroBi
		beq $9, $12, MarcoBi
		beq $9, $13, AbrilBi
		beq $9, $14, MaioBi
		beq $9, $15, JunhoBi
		beq $9, $16, JulhoBi
		beq $9, $17, AgostoBi
		beq $9, $18, SetembroBi
		beq $9, $19, OutubroBi
		beq $9, $20, NovembroBi
		beq $9, $21, DezembroBi
		j invalido
		
########################## Meses sem ser ano Bi ######################################################		
janeiro:		addi $10, $0 31
		sub  $9, $10, $8 
		srl $9, $9, 31
		bne $9, $0, invalido
		j valido

Fevereiro:	addi $10, $0 28
		sub  $9, $10, $8
		srl $9, $9, 31
		bne $9, $0, invalido
		j valido

Marco:		addi $10, $0 31
		sub  $9, $10, $8
		srl $9, $9, 31
		bne $9, $0, invalido
		j valido

Abril:		addi $10, $0 30
		sub  $9, $10, $8
		srl $9, $9, 31
		bne $9, $0, invalido
		j valido

Maio:		addi $10, $0 31
		sub  $9, $10, $8
		srl $9, $9, 31
		bne $9, $0, invalido
		j valido

Junho:		addi $10, $0 30
		sub  $9, $10, $8
		srl $9, $9, 31
		bne $9, $0, invalido
		j valido

Julho:		addi $10, $0 31
		sub  $9, $10, $8
		srl $9, $9, 31
		bne $9, $0, invalido
		j valido

Agosto:		addi $10, $0 31
		sub  $9, $10, $8
		srl $9, $9, 31
		bne $9, $0, invalido
		j valido

Setembro:	addi $10, $0 30
		sub  $9, $10, $8
		srl $9, $9, 31
		bne $9, $0, invalido
		j valido

Outubro:		addi $10, $0 31
		sub  $9, $10, $8
		srl $9, $9, 31
		bne $9, $0, invalido
		j valido

Novembro:	addi $10, $0 30
		sub  $9, $10, $8
		srl $9, $9, 31
		bne $9, $0, invalido
		j valido

Dezembro:	addi $10, $0 31
		sub  $9, $10, $8
		srl $9, $9, 31
		bne $9, $0, invalido
		j valido
##################################################################################

############################ Meses de ano Bi ######################################
janeiroBi:		addi $10, $0 31
		sub  $9, $10, $8 
		srl $9, $9, 31
		bne $9, $0, invalido
		j valido

FevereiroBi:	addi $10, $0 29
		sub  $9, $10, $8
		srl $9, $9, 31
		bne $9, $0, invalido
		j valido

MarcoBi:		addi $10, $0 31
		sub  $9, $10, $8
		srl $9, $9, 31
		bne $9, $0, invalido
		j valido

AbrilBi:		addi $10, $0 30
		sub  $9, $10, $8
		srl $9, $9, 31
		bne $9, $0, invalido
		j valido

MaioBi:		addi $10, $0 31
		sub  $9, $10, $8
		srl $9, $9, 31
		bne $9, $0, invalido
		j valido

JunhoBi:		addi $10, $0 30
		sub  $9, $10, $8
		srl $9, $9, 31
		bne $9, $0, invalido
		j valido

JulhoBi:		addi $10, $0 31
		sub  $9, $10, $8
		srl $9, $9, 31
		bne $9, $0, invalido
		j valido

AgostoBi:		addi $10, $0 31
		sub  $9, $10, $8
		srl $9, $9, 31
		bne $9, $0, invalido
		j valido

SetembroBi:	addi $10, $0 30
		sub  $9, $10, $8
		srl $9, $9, 31
		bne $9, $0, invalido
		j valido

OutubroBi:		addi $10, $0 31
		sub  $9, $10, $8
		srl $9, $9, 31
		bne $9, $0, invalido
		j valido

NovembroBi:	addi $10, $0 30
		sub  $9, $10, $8
		srl $9, $9, 31
		bne $9, $0, invalido
		j valido

DezembroBi:	addi $10, $0 31
		sub  $9, $10, $8
		srl $9, $9, 31
		bne $9, $0, invalido
		j valido
########################################################################################

valido:		addi $4, $0, 'V'
		addi $2, $0, 11
		syscall
		addi $2, $0, 10
		syscall


invalido:		addi $4, $0, 'I'
		addi $2, $0, 11
		syscall
		addi $2, $0, 10
		syscall
