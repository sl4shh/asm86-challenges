.section .text
.global my_strcat
my_strcat:  # void my_strcat(char *dest,char *source);
	push %rbp
	mov %rsp,%rbp
	sub $16,%rsp

loop1:
	mov %rdx,-8(%rbp)
	cmpb $0,(%rdi)
	je endOfFirstString
	inc %rdi
	jmp loop1

endOfFirstString:
	movb (%rsi),%al
	movb %al,(%rdi)
	cmpb $0,%al
	je end
	inc %rdi
	inc %rsi
	jmp endOfFirstString

end:
	mov -8(%rbp),%rdi
	add $16,%rsp
	pop %rbp
	ret
