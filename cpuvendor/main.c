#include <stdio.h>

void testcpuid(int code, unsigned int *a, unsigned int *b, unsigned int *c, unsigned int *d) {
    __asm__ volatile("cpuid"
                     : "=a" (*a), "=b" (*b), "=c" (*c), "=d" (*d)
                     : "a" (code));
}

extern char *cpuvendor(void);

int main() {
    unsigned int eax, ebx, ecx, edx;
    char vendor[13];
    testcpuid(0, &eax, &ebx, &ecx, &edx);
    *(unsigned int *)(vendor + 0) = ebx;
    *(unsigned int *)(vendor + 4) = edx;
    *(unsigned int *)(vendor + 8) = ecx;
    vendor[12] = '\0';
    printf("Expected: '%s'\n", vendor);

    char *s = cpuvendor();
    printf("Got: '%s'\n", s);

    return 0;
}