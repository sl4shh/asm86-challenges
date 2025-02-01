#include <stdio.h>

extern char *strchr(const char *s, int c);

int main() {
	const char *testString = "Hello, world!";
	char *result;

	// Test 1: Find 'H'
	result = strchr(testString, 'H');
	if (result) {
		printf("Found 'H' at position: %ld\n", result - testString);
	} else {
		printf("'H' not found\n");
	}

	// Test 2: Find 'o'
	result = strchr(testString, 'o');
	if (result) {
		printf("Found 'o' at position: %ld\n", result - testString);
	} else {
		printf("'o' not found\n");
	}

	// Test 3: Find 'z'
	result = strchr(testString, 'z');
	if (result) {
		printf("Found 'z' at position: %ld\n", result - testString);
	} else {
		printf("'z' not found\n");
	}

	// Test 4: Find null terminator
	result = strchr(testString, '\0');
	if (result) {
		printf("Found null terminator at position: %ld\n", result - testString);
	} else {
		printf("Null terminator not found\n");
	}

	return 0;
}