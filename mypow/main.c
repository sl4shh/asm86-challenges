#include <stdio.h>

// Declare the assembly function
extern void my_pow(size_t n);

int main() {
    // Test case 1
    printf("Test case 1: my_pow(3)\n");
    my_pow(3);

    // Test case 2
    printf("Test case 2: my_pow(5)\n");
    my_pow(5);

    // Test case 3
    printf("Test case 3: my_pow(0)\n");
    my_pow(0);

    return 0;
}