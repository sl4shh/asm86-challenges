#include <stdio.h>

// Declaration of the assembly function
size_t facto(size_t n);

void run_test(size_t n, size_t expected) {
    size_t result = facto(n);
    if (result == expected) {
        printf("Test passed: facto(%zu) = %zu\n", n, result);
    } else {
        printf("Test failed: facto(%zu) = %zu, expected %zu\n", n, result, expected);
    }
}

int main() {
    // Test cases
    run_test(0, 1);  // 0! = 1
    run_test(1, 1);  // 1! = 1
    run_test(5, 120); // 5! = 120
    run_test(7, 5040); // 7! = 5040
    run_test(10, 3628800); // 10! = 3628800

    return 0;
}