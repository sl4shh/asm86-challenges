.global main
.section .bss
buffer:
    .skip 8

.section .text
main:
    # CHECK ARGV
    push %rbp
    mov %rbp, %rsp

	cmp $2,%rdi
    jne .exit1

    # OPEN FILE, CHECK IT
    mov $2,%rax # SYSCALL_OPEN
    mov 8(%rsi),%rdi # filename
    xor %rsi,%rsi # readonly
    syscall

    cmp $0,%rax
    jl .exit2
    mov %rax,%r8 # r8 = fd

.read:
    mov %r8,%rdi # int fd
    mov $buffer,%rsi # char buffer[8]
    mov $8,%rdx # int bufferSize=8
    xor %rax,%rax # SYSCALL_READ
    syscall
    cmp $0,%rax
    je .exit0

    mov $1,%rax
    mov $1,%rdi
    mov $buffer,%rsi
    syscall
    jmp .read

.exit0:
	mov $0,%rdi
	jmp .exit
.exit1:
	mov $1,%rdi
	jmp .exit
.exit2:
	mov $2,%rdi
	jmp .exit
.exit:
    mov $60, %rax    # SYSCALL_EXIT
    syscall
    pop %rbp
    ret
