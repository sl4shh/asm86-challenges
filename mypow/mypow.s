.global my_pow
.extern printf

.section .data
fmt:
    .string "%d\n"

.section .text
my_pow:
    push %rbp
    mov %rsp, %rbp
    sub $16, %rsp

	mov %rdi,%r8
    mov $1, %r9
my_powLoop:
	# print
    mov $fmt, %rdi 
    mov %r9, %rsi
    xor %rax, %rax 
    call printf
		# print
    mov $fmt, %rdi 
    mov %r9, %rsi
    xor %rax, %rax 
    call printf

	# check if first argument is 0
	cmp $0, %r8
	jle my_powEnd
	imul $2,%r9
	dec %r8

	jmp my_powLoop

my_powEnd:
    add $16, %rsp
    pop %rbp
    ret