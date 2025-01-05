.section .data
buffer:
	.asciz "12345678"

.section .text
.global main
main:
_checkArgs:
	cmp $2,%edi
	jne	_wrongNbArgs
_openFile:
	mov $2,%rax
	mov 8(%rsi),%rdi
	mov $0,%rsi
	syscall
_checkFileOpen:
	test %rax, %rax
	js   _cantOpen
_read8char:
	mov %rax,%rdi
	xor %rax,%rax
	lea buffer(%rip),%rsi
	mov $8,%rdx
	syscall
_write8char:
	mov %rax,%rdx
	mov $1,%rax
	# TODO

_exitFile:
	mov %rax,%rdi
	mov $3,%rax
	syscall

_goodExit:
	xor %rax,%rax
	ret

_cantOpen:
	mov $2,%rax
	ret

_wrongNbArgs:
	mov $1,%rax
	ret
