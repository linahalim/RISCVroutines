.data
  str: .asciiz "wow"  # input

.text
.globl main
main:
  la a0, str 
  mv a1, a0  

  get_length:
  lbu a2, 0(a1)
  addi a1, a1, 1  
  bnez a2, get_length  
 


  addi a1, a1, -2


  compare:
  lbu a2, 0(a0)  # load letter a2
  lbu a3, 0(a1)  # load letter a3
  bne a2, a3, not_palindrome  # check a2 = a3 
  addi a0, a0, 1  
  addi a1, a1, -1 
  blt a0, a1, compare  # If a0 is less than a1, loop

  # palindrome
  li a0, 1
  j exit

  not_palindrome:
  li a0, 0

  exit:
