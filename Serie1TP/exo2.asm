.data
msg: .asciiz "enter any symbole : "
msg1: .asciiz "\nyour symbole is : "
.text
.globl main
.ent main
main:
    # affichage variable 'msg' 
    la $a0,msg
    li $v0,4
    syscall

    # enter symbole in $v0 register
    li $v0,12
    syscall

    # move symbole from $v0 register to $t0 register
    move $t0,$v0
    # affichage variable 'msg1'
    la $a0,msg1
    li $v0,4
    syscall

    # move symbole from $t0 register to $a0 register so we can affiche it
    move $a0,$t0
    # affichage input symbole
    li $v0,11
    syscall
    
    li $v0,10
    syscall
.end main