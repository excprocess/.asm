.text
.globl main
main:
li $t0, 0 #valore da sommare
li $t9, 0 #indice
FOR:
bge $t9, 6, FINE
#Leggi l'intero da tastiera
li $v0, 5
syscall
move $t1, $v0  # Salva l'intero nel registro $t0
add $t0,$t0,$t1 # Operazione (somma della spesa)
add $t9,$t9,1 # INCREMENTO INDICE FOR
j FOR
FINE:
sw $t0, totale # Salva risultato in totale
move $a0, $t0
li $v0,1 
syscall
li $v0,10
syscall
.data
totale: .word 0