.globl main
.data
ciao: .asciiz "ciao"

main:
.text

li $v0, 4
la $a0, ciao
syscall
