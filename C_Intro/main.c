#include "circleLib.h"
#include <stdio.h>

int main(int argc, char** argv) {
	calcPerim((double) argc);
	calcArea((double) argc);

	printf("Circler perimeter is %f\n", calcPerim((double) argc));
	printf("Circle area is %f\n", calcArea((double) argc));

	printf("Rectangle perimeter is %f\n", rect_perimeter((double) argc), (double) argc);
	printf("Rectangle area is %f\n", rect_area((double) argc, (double) argc));


}

