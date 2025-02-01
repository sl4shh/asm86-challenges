.global print_fibo
.extern printf

.section .data
fmt:
    .string "%d\n"

.section .text
print_fibo:
    push %rbp
    mov %rsp, %rbp
    push %r12
    push %r13
    push %r14
	push %r15
    mov %rdi, %r12       # nb iter
    mov $1, %r13         # u_n
    mov $1, %r14         # u_{n+1}

loop:
    cmp $0, %r12        # if (nb iter == 0) goto end
    je end

    # printf("%d\n", u_n)
    mov $fmt, %rdi 
    mov %r13, %rsi
    xor %rax, %rax
    call printf

    # Fibonacci update:
    mov %r13, %r15
    mov %r14, %r13
    add %r15, %r14

    dec %r12
    jmp loop

end:
	pop %r15
    pop %r14
    pop %r13
    pop %r12
    leave
    ret
