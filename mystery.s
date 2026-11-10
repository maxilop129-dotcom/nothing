# mystery.s: two mystery functions (provided; don't change this file).
#
# Your job in Parts A3 and B3: figure out what each one does, then write a
# C function in mystery.c that does exactly the same thing.
#
# Reminder: the first argument arrives in %edi, and the function's answer
# is whatever is in %eax when it reaches ret.

    .text

# ---------------------------------------------------------------------
# Part A3: int mystery1(int x)
# ---------------------------------------------------------------------
    .globl mystery1
mystery1:
    mov    %edi,%eax
    cmp    $0,%eax
    jge    mystery1_a
    mov    $0,%eax
    jmp    mystery1_b
mystery1_a:
    cmp    $100,%eax
    jle    mystery1_b
    mov    $100,%eax
mystery1_b:
    ret

# ---------------------------------------------------------------------
# Part B3: int mystery2(int n)
# ---------------------------------------------------------------------
    .globl mystery2
mystery2:
    mov    $1,%ecx
    mov    $0,%eax
    jmp    mystery2_b
mystery2_a:
    add    %ecx,%ecx
    add    $1,%eax
mystery2_b:
    cmp    %edi,%ecx
    jl     mystery2_a
    ret

    .section .note.GNU-stack,"",@progbits
