#include <stdio.h>
#include <stdlib.h>

int doSomething(int x) {
	return x;
}

int main(int argc, char** argv) {
	doSomething(42);
	int* x = malloc(50 * sizeof(int));


	printf("%p\n", x);
	free(x);
}
