.data
str: .asciiz "wow"

.text
la a0, str
jal ra, palin

palin:
    addi sp, sp, -4
    sw ra, 0(sp)

    li t0, 0
    li t1, 0
    la t2, str
    add t1, t2, zero

loop:
    bge t0, t1, equal
    
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
    lw ra, 0(sp)
    addi sp, sp, 4

    ret

main:

    li a0, 0
    la a0, str
    jal ra, palin
    mv a1, a0
    li a0, 1
    ecall
