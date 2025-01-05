.global my_add
.text
my_add:
	mov %rdi, %rax
	add %rsi, %rax
	ret