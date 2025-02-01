.section .data
variable:
    .space 13

.section .text
.global cpuvendor
cpuvendor:
	xor %rax,%rax
	cpuid
    mov %ebx, variable
    mov %edx, variable+4
    mov %ecx, variable+8
    movb $0, variable+12
    lea variable, %rax
    ret
