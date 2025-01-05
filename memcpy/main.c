#include <stdio.h>
#include <string.h>

// Déclaration de la fonction my_memcpy en assembleur
void my_memcpy(void* dest, const void* src, size_t n);

int main() {
    char src[] = "Hello, world!";
    char dest[20];

    // Appel de la fonction my_memcpy
    my_memcpy(dest, src, strlen(src) + 1);

    // Affichage du résultat
    printf("Source: %s\n", src);
    printf("Destination: %s\n", dest);

    return 0;
}