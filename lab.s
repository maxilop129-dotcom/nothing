# lab.s: write your four assembly functions here (Parts A1, A2, B1, B2).
#
# How a function gets its inputs and gives back its answer:
#   first argument   arrives in  %edi
#   second argument  arrives in  %esi
#   return value     put it in   %eax, then run  ret
# You may also use %ecx and %edx for anything you like.
#
# Use only mov, add, cmp, jumps and ret.
# Every label in this file needs a different name, so start each one with
# the function's name (for example, max2_done, ticket_senior).
#
# Each function below starts out returning 0. Replace the TODO lines with
# your code, and keep the ret at the end.
#
# Build and test:
#   gcc -Wall -o tests tests.c lab.s mystery.s mystery.c
#   ./tests

    .text

# ---------------------------------------------------------------------
# Part A1: the bigger one
#
#   int max2(int x, int y) {
#       if (x > y) {
#           y = x;
#       }
#       return y;
#   }
#
#   x arrives in %edi, y arrives in %esi.
# ---------------------------------------------------------------------
    .globl max2
max2:
    # TODO: replace the next line with your code.
    mov    $0,%eax
    ret

# ---------------------------------------------------------------------
# Part A2: movie tickets
#
#   int ticket_price(int age) {
#       int price;
#       if (age < 12) {
#           price = 5;          // child
#       } else if (age < 65) {
#           price = 12;         // adult
#       } else {
#           price = 7;          // senior
#       }
#       return price;
#   }
#
#   age arrives in %edi. Put the price straight into %eax.
# ---------------------------------------------------------------------
    .globl ticket_price
ticket_price:
    # TODO: replace the next line with your code.
    mov    $0,%eax
    ret

# ---------------------------------------------------------------------
# Part B1: multiplying without multiplying
#
#   int multiply(int x, int n) {
#       int y = 0;
#       int i = 0;
#       while (i < n) {
#           y = y + x;
#           i = i + 1;
#       }
#       return y;
#   }
#
#   x arrives in %edi, n arrives in %esi.
#   Keep y in %eax (so it's already the return value) and i in %ecx.
# ---------------------------------------------------------------------
    .globl multiply
multiply:
    # TODO: replace the next line with your code.
    mov    $0,%eax
    ret

# ---------------------------------------------------------------------
# Part B2: Fibonacci
#
#   Each Fibonacci number is the sum of the two before it:
#   0, 1, 1, 2, 3, 5, 8, ...  This returns the first one that is
#   limit or more.
#
#   int fib_at_least(int limit) {
#       int x = 0;
#       int y = 1;
#       while (y < limit) {
#           int z = x + y;      // the next number
#           x = y;              // slide both along by one
#           y = z;
#       }
#       return y;
#   }
#
#   limit arrives in %edi.
#   Keep x in %ecx, y in %eax (the return value) and z in %edx.
# ---------------------------------------------------------------------
    .globl fib_at_least
fib_at_least:
    # TODO: replace the next line with your code.
    mov    $0,%eax
    ret

# (This last line just tells the linker this file needs nothing special.)
    .section .note.GNU-stack,"",@progbits
