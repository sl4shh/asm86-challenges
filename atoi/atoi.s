.section .text
.globl my_atoi
.type my_atoi, @function

my_atoi: # int my_atoi(char *s)
    push %rbp
    mov %rsp, %rbp
    sub $16, %rsp

	xor %rax,%rax
	xor %rcx,%rcx
	mov $1,%r9
loop:
	cmpb $0,(%rdi)
	je end
	cmpb $'-',(%rdi)
	je minus
	cmpb $'0',(%rdi)
	jl error
	cmpb $'9',(%rdi)
	jg error
	movb (%rdi),%cl
	subb $'0',%cl
	imul $10,%rax
	addb %cl,%al
	inc %rdi
	jmp loop

minus:
	imul $-1,%r9
	inc %rdi
	jmp loop

error:
	mov $1, %rdi
	call exit

end:
	imul %r9,%rax
	leave
	ret
