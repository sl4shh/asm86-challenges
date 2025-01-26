#include <stdio.h>
#include <stdlib.h>

extern char* itoa(int num, char* buf, size_t base);

void test_itoa(int num, size_t base) {
    char buf[33]; // Buffer to hold the converted string
    itoa(num, buf, base);
    printf("itoa(%d, base %zu) = %s\n", num, base, buf);
}

int main() {
    // Test cases
    test_itoa(123, 10);
    test_itoa(-123, 10);
    test_itoa(0, 10);
    test_itoa(255, 16);
    test_itoa(-255, 16);
    test_itoa(255, 2);
    test_itoa(-255, 2);

    return 0;
}