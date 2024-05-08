#.data
#fattoriale: .word 0
#temp: .word 1
#n: .word 35 

#.text
#lw $t0,n
#lw $t1,temp
#li $t5,1
#beqz $t0, fine
#ciclo:
#ble $t0,$t5, fine
#mul $t1,$t1,$t0
#sub $t0,$t0,1
#j ciclo
#fine:
#sw $t1, fattoriale

#batman > di robin
.data
Batman: .word 5
Robin: .word 0

.text
.globl main
main:
lw $t0,Batman # carica Batman
lw $t1,Robin # carica Robin
bgtz $t0, ISTRUZIONE # salto se condizione è vera
j FINE_IF # salto se condizione è falsa
ISTRUZIONE: # INIZIO ISTRUZIONE
add $t1,$t0,2 # imposta Robin con Robin=Batman+2
FINE_IF: # FINE ISTRUZIONE
sw $t1,Robin # salva $t1 in Robin
li $v0,10
syscall
