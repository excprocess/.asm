.data
x: .word 5
y: .word 5

.text
.globl main

main:
lw $t0, x
lw $1, y
sub $t2, $t0, $t1
#bth #006
li $t3, 100
li $t3, 200
#END