.data
msg1: .asciiz "enter the first number: "
msg2: .asciiz "enter the second number: "
msg3: .asciiz "the result is:"
res: .byte 0
num1: .byte 0
num2: .byte 0
.text
.globl main
.ent main
main:
    #msg1
    li $v0,4     
    la $a0,msg1  
    syscall

    #scan num1
    lb $v0,num1
    li $v0,5
    syscall

    #msg2
    move $t0,$v0    
    li $v0,4
    la $a0,msg2
    syscall

    #scan num2
    lb $v0,num2
    li $v0,5
    syscall

    #msg3
    move $t1,$v0
    li $v0,4
    la $a0,msg3
    syscall

    # num1+num2
    add $t2,$t1,$t0
    # print reslta
    li $v0,1
    move $a0,$t2
    syscall

    li $v0,10
    syscall
.end main