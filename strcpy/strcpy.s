.global my_strcpy

.section .text
my_strcpy:
	mov %rdi, %rax
my_strcpyLoop:
	cmpb $0, (%rsi)
	je my_strcpyDone
	movb (%rsi), %dl
	movb %dl, (%rdi)
	inc %rdi
	inc %rsi
	jmp my_strcpyLoop
my_strcpyDone:
	mov $0, (%rdi)
	ret
