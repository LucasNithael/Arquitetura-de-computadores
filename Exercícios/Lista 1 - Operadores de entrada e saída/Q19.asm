.text
main: addi $2, $0, 5
      syscall		#le um inteiro que ser� o n�mero do m�s a ser verificado
      
      addi $8, $0, 8		#adiciona 8 ao registrador 8 para seguinte divis�o
      
      div $2, $8		#divide o valor lido com o valor 8 para obter o quociente
      
      mflo $9		#move o quociente para o registrador 9
      
      add $10, $2, $9		#soma o quociente ao valor lido inicialmente
      
      andi $11, $10, 1	#verificar se � par ou �mpar
      
      addi $4, $11, 30	#soma o valor 0 ou 1 obtido na linha anterior com o inteiro 30 j� no registrador 4 para imprimir
      
      addi $2, $0, 1
      syscall		#imprime
      
      addi $2, $0, 10
      syscall		#finaliza
      
      
