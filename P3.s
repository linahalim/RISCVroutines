
.text
_start:
    lw t0, 0(a0)
    jal ra, Fibonacci
    mv a0, t0

    j end_program

Fibonacci:
    addi sp, sp, -4
    sw ra, 0(sp)

    blez t0, base_cases
    li t1, 1
    beq t0, t1, base_cases
    li t1, 2
    beq t0, t1, base_cases

    addi t0, t0, -1
    jal ra, Fibonacci
    mv t1, t0

    addi t0, t0, -1
    jal ra, Fibonacci
    add t0, t0, t1

    lw ra, 0(sp)
    addi sp, sp, 4

    mv a0, t0
    jalr ra, 0(ra)

base_cases:
    li t0, 0
    mv a0, t0
    jalr ra, 0(ra)

end_program:
    jalr ra, 0(ra)
