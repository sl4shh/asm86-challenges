#include <stdio.h>

void my_strcat(char *dest, char *source);

int main() {
    char buffer[50] = "Hello";

    my_strcat(buffer, ", world!");
    printf("Result: %s\n", buffer);

    return 0;
}