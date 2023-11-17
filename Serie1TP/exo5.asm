.data
msg: .asciiz "enter your number :"
msg1: .asciiz "your number is :"
save: .space 1
.text
.globl main
.ent main
main:
  # affichage variable 'msg'
  la $a0,msg
  li $v0,4
  syscall
  
  # enter number in v0 register
  li,$v0,5
  syscall

  #khabiw fi save
  sb $v0,save
  #\n
  li $a0,10
  li $vo,11
  syscall

  # affichage variable 'msg1'
  la $a0,msg1
  li $v0,4
  syscall

  lb $v0,save
  # affichage number
  li $v0,1

  li $v0,10
  syscall
.end main
