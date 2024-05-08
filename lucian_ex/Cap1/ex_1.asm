.data
x: .word 5
y: .word 129

.text
.globl main

main:
lw $t1, x
lw $t0, y
add $t2, $t1, $t0
#generato da copilot
move $a0, $t2      # Carica il valore di $t2 in $a0
li $v0, 1         # Imposta il codice di servizio di sistema a 1 (stampa intero)
syscall           # Esegui il servizio di sistema

