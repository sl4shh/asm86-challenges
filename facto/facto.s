.section .text
.global facto
facto:
	mov $1,%rax
_loop:
	cmp $1,%rdi
	jle _exit
	mul %rdi # %rax *= %rdi
	dec %rdi
	jmp _loop
_exit:
	ret
