.text
main:  addi $2, $0, 12
	syscall 		#le caracteres
	
       add $8, $0, $2
		
       addi $9, $0, 32	#constante
       
       addi $4, $0, '\n'
       addi $2, $0, 11
       syscall
       
       sub  $4, $8, $9	#converter as letras com os valores asci
       
       
       addi $2, $0, 11
       syscall
       
       
       