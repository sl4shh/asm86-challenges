#include <stdio.h>

extern void print_fibo(size_t n);

int main() {
	puts("print_fibo(7) = ");
	print_fibo(7);
	return 0;
}