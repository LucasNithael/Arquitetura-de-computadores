.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	addi $2, $0, 5
	syscall
	add $10, $0, $2

################# Bloco de redirecionamento ############################	
		addi $11, $0, 1			
		addi $12, $0, 2
		addi $13, $0, 3
		addi $14, $0, 4
		addi $15, $0, 5
		addi $16, $0, 6
		addi $17, $0, 7
		addi $18, $0, 8
		addi $19, $0, 9
		addi $20, $0, 10
		addi $21, $0, 11
		addi $22, $0, 12
		
		beq $9, $11, janeiro
		beq $9, $12, Fevereiro
		#beq $9, $13, Marco
		#beq $9, $14, Abril
		#beq $9, $15, Maio
		#beq $9, $16, Junho
		#beq $9, $17, Julho
		#beq $9, $18, Agosto
		#beq $9, $19, Setembro
		#beq $9, $20, Outubro
		#beq $9, $21, Novembro
		#beq $9, $22, Dezembro
		#j invalido
		
################# BLOCO DE DATAS EM JANEIRO #########################
janeiro:		addi $11, $0, 1				     
		beq $11, $8, CalcJaneiro1		              
		addi $11, $0, 31
		beq $11, $8, CalcJaneiro2
		
		#Dia anterior
		subi $4, $8, 1
		addi $2, $0, 1
		syscall
		addi $4, $0, '/'
		addi $2, $0, 11
		syscall
		add $4, $9, $0
		addi $2, $0, 1
		syscall 
		addi $4, $0, '/'
		addi $2, $0, 11
		syscall
		add $4, $10, $0
		addi $2, $0, 1
		syscall
		#Dia sucessor
		addi $4, $0, '\n'
		addi $2, $0, 11
		syscall
		addi $4, $8, 1
		addi $2, $0, 1
		syscall
		addi $4, $0, '/'
		addi $2, $0, 11
		syscall
		add $4, $9, $0
		addi $2, $0, 1
		syscall 
		addi $4, $0, '/'
		addi $2, $0, 11
		syscall
		add $4, $10, $0
		addi $2, $0, 1
		syscall
		addi $2, $0, 10
		syscall
		 	 	
CalcJaneiro1:	#Dia anterior		
		addi $4, $0, 31
		addi $2, $0, 1
		syscall
		addi $4, $0, '/'	
		addi $2, $0, 11
		syscall
		addi $4, $0, 12
		addi $2, $0, 1
		syscall
		addi $4, $0, '/'
		addi $2, $0, 11
		syscall
		addi $4, $0, 1
		sub  $4, $10, $4
		addi $2, $0, 1
		syscall
		#Dia sucessor
		addi $4, $0, '\n'
		addi $2, $0, 11
		syscall
		addi $4, $8, 1
		addi $2, $0, 1
		syscall
		addi $4, $0, '/'
		addi $2, $0, 11
		syscall
		add $4, $9, $0
		addi $2, $0, 1
		syscall 
		addi $4, $0, '/'
		addi $2, $0, 11
		syscall
		add $4, $10, $0
		addi $2, $0, 1
		syscall
		addi $2, $0, 10
		syscall
		
CalcJaneiro2:	#Dia anterior
		subi $4, $8, 1
		addi $2, $0, 1
		syscall
		addi $4, $0, '/'
		addi $2, $0, 11
		syscall
		add $4, $9, $0
		addi $2, $0, 1
		syscall 
		addi $4, $0, '/'
		addi $2, $0, 11
		syscall
		add $4, $10, $0
		addi $2, $0, 1
		syscall
		#dia sucessor
		addi $4, $0, '\n'
		addi $2, $0, 11
		syscall
		addi $4, $0, 1
		addi $2, $0, 1
		syscall
		addi $4, $0, '/'	
		addi $2, $0, 11
		syscall
		addi $4, $0, 2
		addi $2, $0, 1
		syscall
		addi $4, $0, '/'
		addi $2, $0, 11
		syscall
		add  $4, $10, $0
		addi $2, $0, 1
		syscall
		addi $2, $0, 10
		syscall

################# BLOCO DE DATAS EM FEVEREIRO #########################

Fevereiro:	addi $11, $0, 1				     
		beq $11, $8, CalcFevereiro1		              
		addi $11, $0, 28
		beq $11, $8, CalcFevereiro2
		
		#Dia anterior
		subi $4, $8, 1
		addi $2, $0, 1
		syscall
		addi $4, $0, '/'
		addi $2, $0, 11
		syscall
		add $4, $9, $0
		addi $2, $0, 1
		syscall 
		addi $4, $0, '/'
		addi $2, $0, 11
		syscall
		add $4, $10, $0
		addi $2, $0, 1
		syscall
		#Dia sucessor
		addi $4, $0, '\n'
		addi $2, $0, 11
		syscall
		addi $4, $8, 1
		addi $2, $0, 1
		syscall
		addi $4, $0, '/'
		addi $2, $0, 11
		syscall
		add $4, $9, $0
		addi $2, $0, 1
		syscall 
		addi $4, $0, '/'
		addi $2, $0, 11
		syscall
		add $4, $10, $0
		addi $2, $0, 1
		syscall
		addi $2, $0, 10
		syscall
		 	 	
CalcFevereiro1:	#Dia anterior		
		addi $4, $0, 31
		addi $2, $0, 1
		syscall
		addi $4, $0, '/'	
		addi $2, $0, 11
		syscall
		addi $4, $0, 1
		addi $2, $0, 1
		syscall
		addi $4, $0, '/'
		addi $2, $0, 11
		syscall
		add  $4, $10, $0
		addi $2, $0, 1
		syscall
		#Dia sucessor
		addi $4, $0, '\n'
		addi $2, $0, 11
		syscall
		addi $4, $8, 1
		addi $2, $0, 1
		syscall
		addi $4, $0, '/'
		addi $2, $0, 11
		syscall
		add $4, $9, $0
		addi $2, $0, 1
		syscall 
		addi $4, $0, '/'
		addi $2, $0, 11
		syscall
		add $4, $10, $0
		addi $2, $0, 1
		syscall
		addi $2, $0, 10
		syscall
		
CalcFevereiro2:	#Dia anterior
		subi $4, $8, 1
		addi $2, $0, 1
		syscall
		addi $4, $0, '/'
		addi $2, $0, 11
		syscall
		add $4, $9, $0
		addi $2, $0, 1
		syscall 
		addi $4, $0, '/'
		addi $2, $0, 11
		syscall
		add $4, $10, $0
		addi $2, $0, 1
		syscall
		#dia sucessor
		addi $4, $0, '\n'
		addi $2, $0, 11
		syscall
		addi $4, $0, 1
		addi $2, $0, 1
		syscall
		addi $4, $0, '/'	
		addi $2, $0, 11
		syscall
		addi $4, $0, 3
		addi $2, $0, 1
		syscall
		addi $4, $0, '/'
		addi $2, $0, 11
		syscall
		add  $4, $10, $0
		addi $2, $0, 1
		syscall
		addi $2, $0, 10
		syscall
		
################# BLOCO DE DATAS EM MARÇO #########################
