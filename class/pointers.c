#include <stdio.h>
#include <stdlib.h>

double square(int x){
	return x * x;
}

void filler(double* memoryHunk, int size){
	for(int i=0; i<size; ++i){
		memoryHunk[i] = square(i);
	}
}

void print(double* arr, int size){
	for(int i=0; i<size; ++i){
		printf("%f\t", arr[i]);
	}
	printf("\n");
}

int main(int argc, char** argv){

	double y = 10;
	double* x = &y;
	
	double z[10];
	filler(z, 10);
	print(z, 10);
	
	double* hunk = malloc(10 * sizeof(double));
	filler(hunk, 10);
	print(hunk, 10);
	free(hunk);
}
