#include <stdio.h>

// Declare the assembly function
extern char *my_strcpy(char *dest, const char *source);

int main() {
    char dest[50];

    // Test case
    my_strcpy(dest, "Hello, World!");
    printf("Copied string: %s\n", dest); // Expected output: "Hello, World!"

    return 0;
}