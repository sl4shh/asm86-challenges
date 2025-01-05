#include <stdio.h>
#include <stddef.h>

// Declare the assembly function
extern size_t my_strlen(const char *s);

int main() {
    const char *test_str1 = "Hello, World!";
    const char *test_str2 = "";
    const char *test_str3 = "Assembly is fun!";

    // Test case 1
    printf("Length of '%s' is %zu\n", test_str1, my_strlen(test_str1)); // Expected output: 13

    // Test case 2
    printf("Length of '%s' is %zu\n", test_str2, my_strlen(test_str2)); // Expected output: 0

    // Test case 3
    printf("Length of '%s' is %zu\n", test_str3, my_strlen(test_str3)); // Expected output: 16

    return 0;
}