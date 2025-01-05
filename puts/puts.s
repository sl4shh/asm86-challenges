.section .data
newline:
    .asciz "\n"

.section .text
.globl my_puts
my_puts: # void my_puts(char *s);
    push %rbp
    mov %rsp, %rbp
    sub $16, %rsp

    mov %rdi, %rsi       # Move the string pointer to RSI
    xor %rax, %rax
    mov $-1, %rcx
    repnz scasb
    not %rcx
    dec %rcx             # RCX now contains the length of the string

    mov $1, %rax         # syscall number for sys_write
    mov $1, %rdi         # file descriptor 1 (stdout)
    mov %rsi, %rsi       # buffer pointer (string)
    mov %rcx, %rdx       # number of bytes to write
    syscall

    mov $1, %rax         # syscall number for sys_write
    mov $1, %rdi         # file descriptor 1 (stdout)
    mov $newline, %rsi # buffer pointer (newline)
    mov $1, %rdx         # number of bytes to write
    syscall

    leave
    ret