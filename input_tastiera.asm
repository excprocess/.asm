.data
prompt: .asciiz "Inserisci un intero: "

.text
main:
    # Stampa il prompt
    li $v0, 4
    la $a0, prompt
    syscall

    # Leggi l'intero da tastiera
    li $v0, 5
    syscall
    move $t0, $v0  # Salva l'intero nel registro $t0

    # Ora puoi utilizzare $t0 per ulteriori operazioni
    # ...

    # Fine del programma
    li $v0, 10
    syscall
