.global _start
.extern printf

.section .text
main:
    mov $hello_world, %rdi 
    xor %rax, %rax       
    call printf

    mov $60, %rax
    xor %rdi, %rdi
    syscall

.section .data
hello_world:
    .string "Hello, World!\n"
