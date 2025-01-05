.section .data
text:
	.asciz "Hello World\n"

.section .text
.global main

main:
	mov $1,%rax
	mov $1,%rdi
	mov $text,%rsi
	syscall

	xor %rax,%rax # rax = 0
	ret
