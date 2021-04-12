#include "file_lib.h"
#include "sorter.h"
#include <stdio.h>
#include <stdlib.h>

/* A main program that opens a file with text, sorts it, 
 * and returns a separate, sorted file.
 *
 *
 * @author	Sarah Rockow	
 * @instructor	Professor Woodring
 * @name	main.c
 * @version	Winter 2021
 */


/*
 * Read the file from the command-line.
 * Usage:
 * ./a.out FILE_TO_READ FILE_TO_WRITE
 *
 */

int main(int argc, char** argv){

	// Read the original file.
	char* contents;
	size_t tot_bytes = load_file(argv[1], &contents);

	printf("The file you opened, %s, has %lu bytes.\n", argv[1], tot_bytes);

	// Sort the file with the function you wrote.

	//find the size (i.e. number of words) for the sort function
	int lines = 0;
	for (int i = 0; i < tot_bytes; i++) {
		if (contents[i] == '\n'){
			lines++;
		}
	}
	//content[i] holds individual letters

	printf("There are %d words in the file.\n", lines);
	sort(&contents, lines);	

	// Write out the new file.
	size_t sorted_size = save_file(argv[2], contents, tot_bytes);
	
	printf("\n%s has %lu bytes.\n", argv[2], tot_bytes);
	
	//default
	return 0;
}

// You can see if your file worked correctly by using the
// command:
//
// diff ORIGINAL_FILE NEW_FILE
//
// If the command returns ANYTHING the files are different.
