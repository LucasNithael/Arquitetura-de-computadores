.text
main:	 	addi $2, $0, 5
     		syscall
     		
     		
     		addi $8, $0, 10
     		div $2, $8
     		mfhi $9				#9° Digito
     		mflo $24
     		addi $8, $0, 10
     		div $24, $8
     		mfhi $10	        			#8° Digito
    		mflo $24
    		addi $8, $0, 10
     		div $24, $8
     		mfhi $11      			#7° Digito
     		mflo $24
    		addi $8, $0, 10
     		div $24, $8
     		mfhi $12      			#6° Digito
     		mflo $24
     		addi $8, $0, 10
     		div $24, $8
     		mfhi $13      			#5° Digito
     		mflo $24
		addi $8, $0, 10
     		div $24, $8
     		mfhi $14      			#4° Digito
     		mflo $24
     		addi $8, $0, 10
     		div $24, $8
     		mfhi $15      			#3° Digito
     		mflo $24
     		addi $8, $0, 10
     		div $24, $8
     		mfhi $16      			#2° Digito
     		mflo $24
     		addi $8, $0, 10
     		div $24, $8
     		mfhi $17      			#1° Digito
     		mflo $24
     		
################ Calcular Primeiro digito #####################
		mul $18, $9, 2
		mul $19, $10, 3
	         add $20, $18, $19
	         mul $18, $11, 4
	         add $20, $20, $18
	         mul $18, $12, 5
	         add $20, $20, $18
	         mul $18, $13, 6
	         add $20, $20, $18
	         mul $18, $14, 7
	         add $20, $20, $18
	         mul $18, $15, 8
	         add $20, $20, $18
	         mul $18, $16, 9
	         add $20, $20, $18
	         mul $18, $17, 10
	         add $20, $20, $18
	        
	         addi $18, $0, 10
	         addi $19, $0, 11
	         mul $20, $20, $18
	         div $20, $19
	         mfhi $19
		beq $19, $10, SeDigitoiguala10caso1
		add $4, $0, $19
		addi $2, $0, 1
		syscall
		j nextDigito
		
SeDigitoiguala10caso1:	addi $4, $0, 0
			addi $2, $0, 1
			syscall
		
	
nextDigito:	mul $18, $19, 2
		mul $19, $9, 3
	         add $20, $18, $19
	         mul $18, $10, 4
	         add $20, $20, $18
	         mul $18, $11, 5
	         add $20, $20, $18
	         mul $18, $12, 6
	         add $20, $20, $18
	         mul $18, $13, 7
	         add $20, $20, $18
	         mul $18, $14, 8
	         add $20, $20, $18
	         mul $18, $15, 9
	         add $20, $20, $18
	         mul $18, $16, 10
	         add $20, $20, $18
	         mul $18, $17, 11
	        	add $20, $20, $18
	        	
	         addi $18, $0, 10
	         addi $19, $0, 11
	         mul $20, $20, $18
	         div $20, $19
	         mfhi $19
		beq $19, $10, SeDigitoiguala10caso2
		add $4, $0, $19
		addi $2, $0, 1
		syscall
		addi $2, $0, 10
		syscall
		
SeDigitoiguala10caso2: 	addi $4, $0, 0
			addi $2, $0, 1
			syscall
		
 