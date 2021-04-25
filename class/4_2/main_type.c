#include <stdio.h>
#include <stdlib.h>

#include "type.h"


int main (int argc, char** argv) {
	
	
	//account	one; 

	//printf("Sizeof an account: %lu\n ", sizeof(account) * 50);

	account* one = malloc(sizeof(account) * 50);

	/*	
	one -> id = 9; //whitespace doesn't seem to matter
	(*one).name = "Ira Woodring";
	(*one).balance = 913289.88;
	//printf("%s has $%.2f.\n", one.name, one.balance);
	*/

	//equivalent syntax
	(*one + 0).id = 9;

	//preferred for readability
	one[0].name = "QE2 - Her Reptilian Majesty (HRM)";
	one[0].balance = 8978979078.23;

	printAcct(one[0]);
	free(one);
}
