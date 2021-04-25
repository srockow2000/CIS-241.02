#include <stdio.h>
#include <stdlib.h>


void printer (int* mult, int size) {
	for (int i = 0; i < size; ++i) {
		for (int j = 0; j < size; ++j) {
			printf("%d\t", *(mult + size * i + j));
		}
		printf("\n");
	}
}

int main(int argc, char** argv) {
	

	
	int size = atoi(argv[1]);
	//int size = 5;
	//int mult[size][size] will not work; works in Java, not in C

	int* mult = malloc(size * size * sizeof(int));


	printf("The size of mult is %lu.\n", sizeof(mult));

	for(int i =0; i < size; ++i) {
		for (int j = 0; j < size; ++j) {
			*( mult + size  * i + j) = (i+1) * (j + 1);
		}
	}

	printer(mult, size);

}
