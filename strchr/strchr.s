.section .text
.global strchr # char *strchr(const char *s, int c);
strchr:
	cmpb $0,(%rdi)
	je notFound
	cmpb %sil,(%rdi)
	je found
	inc %rdi
	jmp strchr

found:
	mov %rdi,%rax
	ret

notFound:
	xor %rax,%rax
	ret
