.data
inserisci: .asciiz "inserisci qui il numero "
risultato: .asciiz "il quadrato è "

.text
la $a0, inserisci
li $v0, 4
syscall

li $v0, 5
syscall
move $t0, $v0

mul $t1, $v0, $v0

la $a0, risultato
li $v0, 4
syscall

move $a0, $t1
li $v0, 1
syscall