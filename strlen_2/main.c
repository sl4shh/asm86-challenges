#include <stdio.h>

extern size_t my_strlen(const char* str);

int main() {
    const char* str = "Hello, world!";
    size_t len = my_strlen(str);
    printf("Length of '%s' is %zu\n", str, len);
    return 0;
}