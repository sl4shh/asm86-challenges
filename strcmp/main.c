#include <stdio.h>

extern int my_strcmp(const char* s1, const char* s2);

int main() {
    const char* str1 = "Hello";
    const char* str2 = "Hello";
    const char* str3 = "world";
    const char* str4 = "";
    const char* str5 = "Hell";
    const char* str6 = "Hello";

    // Tests basiques
    int res1 = my_strcmp(str1, str2);
    int res2 = my_strcmp(str1, str3);

    printf("my_strcmp(\"%s\", \"%s\") = %d\n", str1, str2, res1);
    printf("my_strcmp(\"%s\", \"%s\") = %d\n", str1, str3, res2);

    // Tests supplémentaires
    int resA = my_strcmp("ABC", "ABC");
    int resB = my_strcmp("ABC", "ABD");
    int resC = my_strcmp("ABD", "ABC");
    int resD = my_strcmp(str1, str5);
    int resE = my_strcmp(str5, str6);
    int resF = my_strcmp(str4, str1);

    printf("my_strcmp(\"ABC\", \"ABC\") = %d\n", resA);
    printf("my_strcmp(\"ABC\", \"ABD\") = %d\n", resB);
    printf("my_strcmp(\"ABD\", \"ABC\") = %d\n", resC);
    printf("my_strcmp(\"%s\", \"%s\") = %d\n", str1, str5, resD);
    printf("my_strcmp(\"%s\", \"%s\") = %d\n", str5, str6, resE);
    printf("my_strcmp(\"%s\", \"%s\") = %d\n", str4, str1, resF);

    // Vérifications manuelles
    if (resA == 0) {
        printf("OK: \"ABC\" == \"ABC\"\n");
    } else {
        printf("FAIL: \"ABC\" != \"ABC\"\n");
    }

    if (resB < 0) {
        printf("OK: \"ABC\" < \"ABD\"\n");
    } else {
        printf("FAIL: \"ABC\" !< \"ABD\"\n");
    }

    if (resC > 0) {
        printf("OK: \"ABD\" > \"ABC\"\n");
    } else {
        printf("FAIL: \"ABD\" !> \"ABC\"\n");
    }

    if (resD > 0) {
        printf("OK: \"%s\" > \"%s\"\n", str1, str5);
    } else {
        printf("FAIL: \"%s\" !> \"%s\"\n", str1, str5);
    }

    if (resE < 0) {
        printf("OK: \"%s\" < \"%s\"\n", str5, str6);
    } else {
        printf("FAIL: \"%s\" !< \"%s\"\n", str5, str6);
    }

    if (resF < 0) {
        printf("OK: \"%s\" < \"%s\"\n", str4, str1);
    } else {
        printf("FAIL: \"%s\" !< \"%s\"\n", str4, str1);
    }

    return 0;
}