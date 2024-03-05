.data
str: .asciiz "wow"

.text
main:
    la a0, str
    jal ra, palin
    mv a1, a0
    bne a1, zero, not_palindrome
    li a0, 0
    j exit

not_palindrome:
    li a0, 1
    j exit

palin:
    addi sp, sp, -12
    sw ra, 8(sp)
    sw a0, 4(sp)
    sw a1, 0(sp)

    li t0, 0             
    li t1, 0      
    la t2, str             
    add t1, t2, zero      
    jal ra, strlen      
    mv t3, a0         
    add t1, t1, t3      

loop:
    blt t0, t3, next  

    bge t2, t1, equal  

    lb a1, 0(t2)       
    lb a2, 0(t1)      
    beq a1, a2, next     
    li a0, 0      
    j end

next:
    addi t0, t0, 1       
    addi t1, t1, -1  
    j loop

equal:
    li a0, 1           
    j end

end:
    lw ra, 8(sp)
    lw a0, 4(sp)
    lw a1, 0(sp)
    addi sp, sp, 12
    jalr ra, ra, 0

strlen:
    li a0, 0         
loop_strlen:
    lb a1, 0(a1)       
    beqz a1, end_strlen   
    addi a0, a0, 1     
    addi a1, a1, 1  
    j loop_strlen
end_strlen:
    ret
exit:
	# end of code
