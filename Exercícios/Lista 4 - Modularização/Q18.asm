.text

main:addi $2, $0, 5
syscall 
add $7, $0, $2
addi $3, $0, 1#1
addi $5, $0, 1#j
addi $6, $0, 0#c

for1:
sle $8, $3, $7
beq $8, 1, for2
addi $2, $0, 10
syscall 

for2:
sle $9, $5, $3
beq $9, 1, continua2
j continua

continua2:
addi $6, $6, 1
add $4, $0, $6
addi $2, $0, 1
syscall
add $4, $0, 32
addi $2, $0, 11
syscall 
addi $5, $5, 1 
j for2

continua:
add $4, $0, 10
addi $2, $0, 11
syscall 
addi $3, $3, 1
addi $5, $0, 1
j for1
