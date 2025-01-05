#include <stdio.h>

// Déclaration de la fonction my_atoi en assembleur
extern int my_atoi(char *s);

int main() {
    char *test1 = "123";
    char *test2 = "-42";
    char *test3 = "0";
    char *test4 = "9999999";

    printf("my_atoi(\"%s\") = %d\n", test1, my_atoi(test1));
    printf("my_atoi(\"%s\") = %d\n", test2, my_atoi(test2));
    printf("my_atoi(\"%s\") = %d\n", test3, my_atoi(test3));
    printf("my_atoi(\"%s\") = %d\n", test4, my_atoi(test4));

    return 0;
}