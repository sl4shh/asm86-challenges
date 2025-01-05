#include <stdio.h>

// Declare the my_memset function
void *my_memset(void *s, int c, size_t n);

int main() {
    char buffer[50];

    // Use my_memset to set the buffer to 'A'
    char* s2 = my_memset(buffer, 'A', sizeof(buffer) - 1);
    buffer[sizeof(buffer) - 1] = '\0'; // Null-terminate the string

    printf("Pointer to buffer: %p\n", (void *)buffer);
    printf("Buffer after my_memset: %s\n", buffer);
    printf("Pointer to s2: %p\n", (void *)s2);
    printf("Buffer after my_memset: %s\n", s2);

    return 0;
}