.data
#we don't need any variable
.text
.globl main
.ent main
main:
    # print a : carachter number 97 in code ASCII 
    li $a0,97
    li $v0,11
    syscall
    
    li $v0,10
    syscall
.end main