.data
msg: .asciiz "enter longueur :"
msg1: .asciiz "\nenter largeur :"
msg2: .asciiz "\nsuperficie is : "
msg3: .asciiz "\npérimètre is : "
x: .word 0
y: .word 0
superf: .word 0
perim: .word 0
.text
.globl main
.ent main
main:
  # affichage variable 'msg'
  la $a0,msg
  li $v0,4
  syscall

  # enter number in $v0 register
  li $v0,5
  syscall

  #nkhabiw fi longueur
  sw $v0,x

  #affichage variable 'msg1'
  La $a0,msg1
  li $v0,4
  syscall

  # enter number in $v0 register
  li $v0,5
  syscall

  #nkhabiw fi largeur
  sw $v0,y

  # affichage variable 'msg2
  la $a0,msg2
  li $v0,4
  syscall

  # khabina x,y fi t0,tl
  lw $t0,x
  lw $tl,y

  # drbna t0, ti wkhabina reslt fi t2
  mul $t2, $t0, $tl
  # affichage input reslta
  move $a0,$t2
  li $v0,1
  syscall

  li $v0,10
  syscall
.end main
