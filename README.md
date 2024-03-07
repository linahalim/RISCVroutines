# RISCVroutines
learning to implement RISCV routines

P1.s:
RISCV assembly program to reverse the bits in a register (e.g., 0000000000010111 -> 0000000000011101). It ignores the leading 0s and reverse the remaining bits. The 'input' register is a0. The 'output' register is a3. The code can be simulated on:
http://www.kvakil.me/venus/

P2.s:
RISCV routine, palin, that tests whether a given input string is a palindrome. The procedure sets a0 to 1 if the string is palindrome; otherwise, 0. A palindrome is a word that is the same forward and backward. For example, the words “wow” and “racecar” are palindromes. The code can be simulated on:
http://www.kvakil.me/venus/

P3.s:
Recursive function in RISCV that calculates the nth Fibonacci number. For example, if the function is called with the argument 6 in a0, then it should return 8 in a0 since Fibonacci series is 1, 1, 2, 3, 5, 8. The code can be simulated on:
http://www.kvakil.me/venus/


