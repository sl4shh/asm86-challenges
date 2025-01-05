// Declaration of the my_puts function in assembly
extern void my_puts(char *s);

int main() {
    char *test1 = "Hello, world!";
    char *test2 = "This is a test.";
    char *test3 = "Assembly is fun!";

    my_puts(test1);
    my_puts(test2);
    my_puts(test3);

    return 0;
}