
.text
_start:
	addi a0, x0, 6
    jal ra, Fibonacci
    add x0, x0, x0

Fibonacci:
    addi sp, sp, -12
    sw ra, 0(sp)
    sw a0, 4(sp)

    blez a0, base_cases
    li t1, 1
    beq a0, t1, base_cases
    li t1, 2
    beq a0, t1, base_cases

    addi a0, a0, -1
    jal ra, Fibonacci
    sw a0, 8(sp)
    lw a0, 4(sp)

    addi a0, a0, -2
    jal ra, Fibonacci
    lw t1, 8(sp)
    add a0, a0, t1

    lw ra, 0(sp)
    addi sp, sp, 12

    jalr ra, 0(ra)

base_cases:
    li a0, 1
    addi sp, sp, 12
    jalr ra, 0(ra)

