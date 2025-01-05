.section .text

.global my_memcpy
my_memcpy:
	mov %rdx,%rcx
	rep movsb
	ret
