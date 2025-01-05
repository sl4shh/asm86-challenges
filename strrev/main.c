#include <stdio.h>

// Declare the assembly function
extern void my_strrev(char *s);

int main() {
    char test_str1[] = "Hello, World!";
    char test_str2[] = "Assembly";
    char test_str3[] = "12345";

    // Test case 1
    my_strrev(test_str1);
    printf("Reversed string: %s\n", test_str1); // Expected output: "!dlroW ,olleH"

    // Test case 2
    my_strrev(test_str2);
    printf("Reversed string: %s\n", test_str2); // Expected output: "ylbmessA"

    // Test case 3
    my_strrev(test_str3);
    printf("Reversed string: %s\n", test_str3); // Expected output: "54321"

    return 0;
}