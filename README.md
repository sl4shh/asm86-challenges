# Challenges
Good luck for ASM exams

Always use this Makefile to test, Makefile are given in exams

Avoid cheating with https://godbolt.org/, you won't have it in exams
Same for code generation with `gcc -S` (especially in finals)

```Makefile
all:
	gcc -fPIE *.[cs] -c
	gcc -no-pie *.o -o test
	./test
clean:
	rm -f *.o test
```

## ret42
Make a function that returns 42 : `int ret42()`

> `%rax` is the return register and `ret` is the return instruction
```x86asm
.section .text
.global ret42
ret42:
	# instructions there
```
You can use this main.c to test
```c
#include <stdio.h>

extern int ret42();

int main(){
	printf("The function returned : %d\n", ret42());
	return 0;
}
```

## hello_world_syscall
Create a main function, printing an hello world

It must return `0`
```x86asm
.section .data
	# store constants

.section .text
.global main

main:
	# change registers to write in stdout
	syscall

	xor %rax,%rax # rax = 0
	ret
```

> `xor %rax,%rax` is equivalent to `mov $0,%rax`

> Look for syscall numbers to sys_write

## hello_world_printf
Create a main function that `printf("Hello World\n")`
> You must void (set to 0) `%rax` before calling a variadic function

## my_add
Create a function `int my_add(int a,int b)` that returns the sum a+b

> You can use this main.c to test
```c
#include <stdio.h>

// Declare the assembly function
extern int my_add(int a, int b);

int main() {
	int result;

	// Test case 1
	result = my_add(2, 3);
	printf("my_add(2, 3) = %d\n", result); // Expected output: 5

	// Test case 2
	result = my_add(-1, 1);
	printf("my_add(-1, 1) = %d\n", result); // Expected output: 0

	// Test case 3
	result = my_add(0, 0);
	printf("my_add(0, 0) = %d\n", result); // Expected output: 0

	return 0;
}
```

## facto (midterm)
Create a function `size_t facto(size_t n)` that returns the factorial of `n`
> `mul %rdx` means `%rax = %rax * %rdx`

## cpuvendor (final)
Create a function `char* cpuvendor(void)` that returns the CPU vendor
> You should use `cpuid` instruction, result depends on the CPU (GenuineIntel, AuthenticAMD, ...)

## strlen
Create a function `size_t my_strlen(char *s)` that returns the length of string

## strchr (final)
Create a function `char* strchr(char *s,char c)` that returns the first occurence of `c` in `s`
or NULL if not found

## strcpy
Create a function `void my_strcpy(char *dst,char *src)` that copies `src` into `dst`

## strrev
Create a function `void my_strrev(char *s)` that reverses a string

## strcmp
Create a function `int my_strcmp(char *s1,char *s2)` that compares two strings

## memset
Create a function `void my_memset(void *s,int c,size_t n)` that fills `n` bytes of `s` with `c`

## memcpy
Create a function `void my_memcpy(void *dst,void *src,size_t n)` that copies `n` bytes from `src` to `dst`
> You can use `rep movsb` to copy bytes (not mandatory)

## strcat
Create a function `void my_strcat(char *dst,char *src)` that concatenates `src` into `dst`

## strlen_2 (final)
Create a function `size_t my_strlen2(char *s)` that returns the length of string, **without jumps**

> To do so, look for rep patterns, like `repnz scasb`

## memset_2
Create a function `void my_memset2(void *s,int c,size_t n)` that fills `n` bytes of `s` with `c`, **without jumps**

> To do so, look for rep patterns, like `rep stosb`

## my_strcpy_2
Create a function `void my_strcpy2(char *dst,char *src)` that copies `src` into `dst`, **without jumps**

> To do so, look for rep patterns, like `rep movsb`

## atoi (midterm)
Create a function `int my_atoi(char *s)` that converts a string to an integer
- It must handle negative numbers
- exit(1) on invalid input / error

## mypow
Create a function `int my_pow(int n)` that `printf` the n first powers of 2

For instance, `mypow(3)` should print

```
1
2
4
8
```
> Don't forget to void `%rax` before calling `printf`

## itoa
Create a function `char* itoa(int n,char *s,size_t base)` that converts an integer to a string
We consider base to be between 2 and 16, and s is large enough to store the result
For example `itoa(-42,s,10)` should store "-42" in s
And `itoa(42,s,2)` should store "101010" in s
And `itoa(42,s,16)` should store "2A" in s

## strcat_2
Create a function `void my_strcat2(char *dst,char *src)` that concatenates `src` into `dst`, **without jumps**

> To do so, look for rep patterns, like `rep movsb`
>
> You can use previous functions, and call them using `call my_strlen` for example

## cat (final)

Create an executable that prints the content of a file, like `cat`.
- if wrong number of arguments, exit with code 1
- if file can't be opened, exit with code 2
- otherwise exit with code 0
- you can't read/write 1 char at time (use buffer)
- you can't use stdio functions like `puts`, `fopen`, `fread`, `fclose`, `printf`

> For syscalls, 1 = sys_write, 0 = sys_read, 2 = sys_open, 3 = sys_close