#include <stdio.h>
#include <stdlib.h>


int main(int argc, char** argv) {
	
	char* name = "Ira";
	char* lname = "Woodring";

	printf("%s\n%s\n\n", name, lname);	
	printf("%p\n%p\n\n", name, lname);

	char** array = malloc(10 * sizeof(char*));
	array[0] = name;
	array[1] = lname;

	printf("%s\n%s\n\n", array[0], array[1]);

	char* newName = malloc(6 * sizeof(char));
	newName[0] = 'H';
	newName[1] = 'i';
	newName[2] = '\0';

	array[2] = newName;

	printf("%p\n", newName);

	printf("%s\n", newName);
	printf("%s\n", array[2]);

	free(newName);
}
