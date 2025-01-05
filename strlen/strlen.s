.global my_strlen

.section .text
my_strlen:
	xor %rax,%rax
my_strlenLoop:
	cmpb $0,(%rdi)
	jle my_strlenEnd
	inc %rax
	inc %rdi
	jmp my_strlenLoop
my_strlenEnd:
	ret