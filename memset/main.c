#include <stdio.h>
#include <string.h>

// Déclaration de la fonction my_memset
void *my_memset(void *s, int c, size_t n);

int main() {
    char buffer[50];

    // Initialiser le buffer avec des zéros
    memset(buffer, 0, sizeof(buffer));

    // Utiliser my_memset pour remplir le buffer avec 'A'
    my_memset(buffer, 'A', 10);

    // Afficher le résultat
    printf("Buffer après my_memset: %s\n", buffer);

    return 0;
}