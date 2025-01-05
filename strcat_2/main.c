#include <stdio.h>
#include <string.h>

// Déclaration de la fonction my_strcat
char *my_strcat(char *dest, const char *src);

int main() {
    char dest[14] = "Hello, ";
    const char *src = "world!";

    // Utiliser my_strcat pour concaténer les chaînes
    my_strcat(dest, src);

    // Afficher le résultat
    printf("Résultat de my_strcat: '%s'\n", dest);

    return 0;
}