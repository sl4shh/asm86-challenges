.section .text
.global my_strcat # char *my_strcat(char *dest, const char *src);
my_strcat:
	xor %rax,%rax
	movq $-1,%rcx
	repnz scasb
	dec %rdi

	mov %rdi,%r8
	mov %rsi,%rdi

	xor %rax,%rax
	movq $-1,%rcx
	repnz scasb
	not %rcx

	mov %r8,%rdi
	repnz movsb	

	ret
