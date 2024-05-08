#https://www.youtube.com/watch?v=pw3gAArkLEA&list=PL_YbGGsa4aEsSFxSuEGToRnVloOb68Si-&index=15
.globl main
.data

vettore: .word 1,2,3,4,5,6,7,8,9,10
N: .word 10 #numero di elementi in vettore
capo: .asciiz ""

.text 

main:
li $t0, 0 #carico l'indice
lw $t1, N #carico qui la variabile N
la $t4, capo
#il ciclo si interromperà quando t0 =t1, fine del vettore, va ad end
while: bge $t0, $t1, end #funzione nella funzione, ciclo finito
sll $t3, $t0, 2
lw $t3, vettore($t3)

li $v0, 1
move $a0, $t3
syscall

li $v0, 4
move $a0, $t4
syscall

addi $t0, $t0, 1

j while

end:
li $v0, 10
syscall