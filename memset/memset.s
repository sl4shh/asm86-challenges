.section .text
.global my_memset
my_memset: # void *my_memset(void *s, int c, size_t n);
	cmp $0,%rdx
	je	exit
	mov %rsi,(%rdi)
	inc %rdi
	dec %rdx
	jmp my_memset
exit:
	ret
