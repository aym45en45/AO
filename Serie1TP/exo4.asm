.data
msg: .asciiz "enter chaine caractere : "
msg1: .asciiz "\nyour chaine caractere is : "
chaine: .space 21
.text
.globl main
.ent main
main:
    # msg
    la $a0,msg
    li $v0,4
    syscall
    
    #scan   
    li $v0,8
    la $a0,chaine
    li $a1,21
    syscall
    
    #msg1
    la $a0,msg1
    li $v0,4
    syscall
    
    #print
    li $v0,4
    la $a0,chaine
    syscall

    li $v0,10
    syscall
.end main