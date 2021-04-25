#include <stdio.h>
#include <stdlib.h>

void fillerUp(double** arr, int size){
	*arr = malloc(size * sizeof(double));
	for(int i=0; i<size; ++i){
		*arr[i] = (double)i;
	}
}

void printer(double* arr, int size){
	for(int i=0; i<size; ++i){
		printf("%f\t", arr[i]);
	}
	printf("\n");
}

int main(int argc, char** argv){
	double* arr;
	fillerUp(&arr, 100);
	printer(arr, 100);

	free(arr);
}
