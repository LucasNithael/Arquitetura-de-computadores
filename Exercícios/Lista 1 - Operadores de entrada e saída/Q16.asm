.text
main: addi $8, $0, 2		#Guarda 2 no registrador 8
      addi $9, $0, -1		#Guarda -1 no resgistrador 9
      
      addi $2, $0, 5
      syscall		#le um inteiro
      
      div $2, $8		#divide por 2
      
      mfhi $10		#move o resto para o registrador 10
      
      mul $11, $10, $9		#multiplica o resto por -1 e aloca no registrador 11
      
      add $4, $0, $11
      addi $2, $0, 1
      syscall		#imprime o resto
      
      addi $2, $0, 10
      syscall		#termina o progra
      
