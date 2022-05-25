.text
main: addi $2, $0, 5
      syscall 		#le um inteiro
     
      add $8,$2, $0 		#adiciona ao registrador 8 o valor lido
     
      addi $2, $0, 5
      syscall 		#le um segundo inteiro
     
      sub $9, $8, $2 		#diferença entre os dois valores
     
      srl $10, $9, 31 	#Andar 31 casas para a esquerda da diferença entre os valores lidos
     	
      addi $13, $0, 1 	#adiciona 1 para utilizar na operação xor
     
      xor $14, $10, $13          #mudar para 0 se for 1 e mudar pra 1 se for 0
       
      mul $11, $8, $10 	#Multiplica o primeiro valor lido com o sinal tido na deslocação
     
      mul $12, $2, $14 	#Multiplica o segundo valor lido com o sinal tido na deslocação
     
      add $4, $11, $12 	#Soma os produtos
     
      addi $2, $0, 1
      syscall #imprime a soma
     
     
      addi $2, $0, 10
      syscall #Termina o programa
