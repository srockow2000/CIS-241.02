#include "libOne.h"
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char** argv){
	double radius = atof(argv[1]);
	printf("Circumference: %f\n", circ(radius));
	printf("Area: %f\n", area(radius));
}
