#include <stdio.h>

extern int ret42();

int main(){
	printf("The function returned : %d\n", ret42());
	return 0;
}