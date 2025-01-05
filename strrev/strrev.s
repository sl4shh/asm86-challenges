.global my_strrev

.section .text
my_strrev:
	mov $0,%r9
	mov %rdi,%r8
loop:
	cmpb $0,(%r8)
	je done
	inc %r8
	jmp loop
done:
	dec %r8
loop2:
	movb (%r8),%al
	cmp %rdi,%r8
	jle done2
	movb (%rdi),%bl
	movb %bl,(%r8)
	movb %al,(%rdi)
	dec %r8
	inc %rdi
	jmp loop2
done2:
	xor %rax,%rax
	ret
