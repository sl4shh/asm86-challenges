.section .text
.global itoa
itoa: # char* itoa(int num,char* buf,size_t base)
	mov %edi,%eax
	xor %r10,%r10
	xor %r11,%r11
	mov %rsi,%r8
	mov %rdx,%r9
	test %eax,%eax
	jz _zero
	js _negative
	jmp _aftersign
_zero:
	movb $'0',(%rsi)
	inc %rsi
	jmp _exit
_negative:
	movb $'-',(%rsi)
	neg %eax
	inc %r10
	inc %r11
	inc %rsi
_aftersign:
	cmp $0,%eax
	je _reverse
	xor %rdx,%rdx
	div %r9d # %eax = %eax / %r9 + %rdx
	cmp $10,%rdx
	jge _hexa
_decimal:
	add $'0',%dl
	movb %dl,(%rsi)
	jmp _afterDecimalHexa
_hexa:
	add $'A',%dl
	sub $10,%dl
	movb %dl,(%rsi)
_afterDecimalHexa:
	inc %r11
	inc %rsi
	jmp _aftersign
_reverse:
	mov %r8,%rcx
	dec %r11
_reverseLoop:
 	cmp %r10,%r11
 	jle	_exit
    movb (%rcx, %r10), %al
    movb (%rcx, %r11), %bl
    movb %al, (%rcx, %r11)
    movb %bl, (%rcx, %r10)
 	inc %r10
	dec %r11
	jmp _reverseLoop
_exit:
	movb $0,(%rsi)
	mov %r8,%rax
	ret
	