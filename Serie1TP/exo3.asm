.data
msg: .asciiz "enter any minuscule caractere : "
msg1: .asciiz "\nyour majuscule caractere is : "
.text
.globl main
.ent main
main:
    # affichage variable 'msg' 
    la $a0,msg
    li $v0,4
    syscall

    # enter caractere in $v0 register
    li $v0,12
    syscall

    # move caractere from $v0 register to $t0 register
    move $t0,$v0
    # affichage variable 'msg1'
    la $a0,msg1
    li $v0,4
    syscall

    # ki tna9s l minuscule caractere 32 rah iji majuscule ta3o fi code ASCII
    # hnaya n9sna l caractere li kan fi t0 whatinah fi $t1
    sub $t1, $t0, 32
    # move caractere from $t1 register to $a0 register so we can affiche it
    move $a0,$t1
    # affichage input caractere
    li $v0,11
    syscall
    
    li $v0,10
    syscall
.end main