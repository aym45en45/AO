.data
msg: .asciiz "enter any symbole : "
msg1: .asciiz "\nyour symbole is : "
save: .space 1
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

    # nkhabiw fi save
    sb $v0,save
    # \n
    li $a0,10
    li $v0,11
    syscall

    # affichage variable 'msg'
    la $a0,msg1
    li $v0,4
    syscall
    
    lb $a0,save
    # affichage input symbole
    li $v0,11
    syscall

    li $v0,10
    syscall
.end main
