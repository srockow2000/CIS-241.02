#ifndef			__H__FILE_LIB__
#define			__H__FILE_LIB__
#include <stdlib.h>
#include <stdio.h>

size_t load_file(char* path, char** contents);
size_t save_file(char* path, char* contents, size_t size);

#endif
