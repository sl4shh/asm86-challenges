.section .text
.global my_memset
my_memset: # void *memset(void *s, int c, size_t n);
	push %rbp
	mov %rsp,%rbp

	mov %rdi,%r8
	mov %rdx,%rcx
	mov %rsi,%rax
	rep stosb

	mov %r8,%rax
	leave
	ret
