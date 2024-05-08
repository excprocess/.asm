.text
.globl main
main:
li $t9,0 # Inizializza indice
li $t0,0 # inizializza il registro che ospiterà totale
FOR:
bge $t9,6, FINE_FOR # CONTROLLO CONDIZIONE NEGATA FOR
li $v0,5 # Servizio di lettura intero
syscall # Chiamata del servizio
move $t1,$v0 # spostamento del valore letto da tastiera
add $t0,$t0,$t1 # totale=totale+x
add $t9,$t9,1 # incremento indice
j FOR #CICLO FOR
FINE_FOR:
sw $t0,totale # Salva risultato in totale
move $a0, $t0
li $v0,1 
syscall

li $v0,10
syscall
.data
totale: .word 0



#MIO APPROCCIO

#.text
#.globl main

#main:
#.data
#totale: .word 0

#li $t0, 0 #valore da sommare
#li $t9, 0 #indice
#li $t1, 0 #registro per il totale

#FOR:
#bge $t9, 6, BLOCCOFOR
#j FINE

#BLOCCOFOR:
# Stampa il prompt
#li $v0, 4
#la $a0, prompt
#syscall

# Leggi l'intero da tastiera
#li $v0, 5
#syscall
#move $t0, $v0  # Salva l'intero nel registro $t0

#add $t1,$t1,$t0 # Operazione (somma della spesa)
#addi $t9,$t9,1 # INCREMENTO INDICE FOR
#j FOR

#FINE:
#sw $t1,totale # Salva risultato in totale
#li $v0,10
#syscall



