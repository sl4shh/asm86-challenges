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