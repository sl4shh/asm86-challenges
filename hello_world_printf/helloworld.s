.section .rodata

.global main
.section .text

main:
    subq  $8,          %rsp # so the stack is 16-aligned when calling printf
    xor   %rax,        %rax
    movq  $.buffer,    %rdi 
    call  printf
    xor   %rax,        %rax
    addq  $8,          %rsp
    ret

.buffer:
    .string "Hello World!\n"