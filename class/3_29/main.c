#include "file.h"
#include <stdio.h>


int main(int argc, char** argv) {

	char* contents;
	size_t size = read(argv[1], &contents);

	printf("%lu number of bytes read from the file.\n", size);
	for(size_t i = 0; i < size; ++i) {
		printf("%d\n", contents[i]);
	}

	free(contents);
}
