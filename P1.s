_start:
    li a0, 0x17
    mv a1, a0
    li a2, 0
    
leading_zero_loop:
    bltz a1, reverse_loop
    srli a1, a1, 1
    addi a2, a2, 1
    bnez a1, leading_zero_loop
    
reverse_loop:
    mv a1, a0
    li a3, 0
    
reverse_bit_loop:
    andi a4, a1, 1
    slli a3, a3, 1
    or a3, a3, a4
    srli a1, a1, 1
    bnez a1, reverse_bit_loop
    
    li t0, 31
    sub t0, t0, a2
    sll a3, a3, t0
    srl a3, a3, t0
    
    li a7, 93
    li a0, 0
