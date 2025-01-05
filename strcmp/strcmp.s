.section .text
.global my_strcmp
my_strcmp: # int my_strcmp(char* s1,char* s2);
	mov (%rsi),%al
	mov (%rdi),%bl
	cmpb %al,%bl
	je samechar
	cmpb %al,%bl
	jg more
	mov $-1,%rax
	ret
more:
	mov $1,%rax
	ret

samechar:
	cmpb $0,(%rsi)
	je exitSame
	inc %rsi
	inc %rdi
	jmp my_strcmp

exitSame:
	xor %rax,%rax
	ret
