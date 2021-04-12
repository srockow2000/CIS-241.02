#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "sorter.h"


/* A program to sort a file containing a list of words separated by new lines.
 *
 * @author 		Sarah Rockow
 * @instructor		Professor Woodring
 * @name		sorter.c
 * @version		Winter 2021 
 */


/* A method to sort a file containing a list of words 
 * with each word separated by a new line.
 *
 * @param contents	a file address
 * @param size		the number of lines (i.e. words) in the file
 */
void sort(char** contents, int size) {
	 /*
	 * task 1.1: create an array that can hold all of contents
	 * note: must be char** similar to dynamic2.c with mult
	 *
	 * task 1.2: create a simple array that accesses contents
	 * note: 	this should grab individual words 
	 * 		which will be added to 1.1 array
	 *
	 * note: when testing in main, contents[i] was just individual letters
	 * 	words will form an array of letters
	 * 	sorted will form an array of words
	 *
	 * task 2: fill array
	 * note: similar to fork2.c, but with 'while' instead of 'if'
	 *
	 * task 3: sort
	 * note: pretty much plagiarizing from 
	 * 	'https://www.geeksforgeeks.org/insertion-sort/'
	 * 	 only changes were using string comparisons
	 *
	 * task 4.1: make contents point to new sorted array
	 * task 4.2: return the sorted array and free the memory
	 */

	//Task 1.1: array to hold array of words; essentially a temp variable
	char** sorted = malloc(size * sizeof(char*));

	//Task 1.2: array to hold letters; array ends when new line is found
	char* words = strtok(*contents, "\n");

	
	//Task 2: fill sorted array using words array
	int i = 0;

	
	while (words != NULL) {
		sorted[i] = words;
		i++;

		//reset while loop
	//	words = strtok(NULL, "\n");
	}


	//Task 3: insertion sort from 
	//'https://www.geeksforgeeks.org/insertion-sort/'
	int j, k = 0;
	char* temp;
	
	for (j = 0; j < size; j++) {
		temp = sorted[j];
		j = i -1;

		/* elements that are greater than temp get moved 
		 * one position ahead of current position
		 *
		 * comparison is made using addresses
		 * uses ASCII rules; so 'Zebra' could come before 'ant'
		 */
		
		while (k >= 0 && sorted[k] > temp) {
			sorted[k + 1] = &temp[k];
			k = k - 1;
		}
		contents[k + 1] = temp;
	}
	 
	//create new array capable of holding all the words in the file;
	//fill it with sorted list
	char arr[size * sizeof(char)];
	
	for (int a = 0; a < size; a++) {
		//add the now sorted words to a new array; 
		//keep same format as original
		strcat(arr, sorted[a]);
		strcat(arr, "\n");
	}

	//make *contents point to the sorted array
	*contents = arr;
	
	//free up the memory from the array (i.e. unmalloc)
	free(sorted);
}
