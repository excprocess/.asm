.data
uno: .word 10
due: .word 5

.text
lw $t0, uno
lw $t1, due
mul $t3, $t0, $t1

li $v0, 1
move $a0, $t3 
syscall

#oppure
mult $t0, $t1
li $v0, 1
mflo $a0
syscall

li $v0, 10
syscall