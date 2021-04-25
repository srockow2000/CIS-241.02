#include "file.h"
#include <sys/stat.h>

size_t read(char* path, char** contents) {

	//find out file size
	struct stat st;
	stat(path, &st);
	size_t size = st.st_size;

	//ask system to create enough memory to store all of the bytes
	FILE* fp = fopen(path, "r");

	if (fp == NULL) {
		return 0;
	}


	*contents = malloc(sizeof(char) * size);

	size_t read_num_bytes = fread(*contents, 1, size, fp);
	fclose(fp);

	return read_num_bytes;

/*sometimes called a record type
not an object; almost like a precursor to objects
objects have protection; they are encapsulated
*/
			
}
