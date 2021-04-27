#include "test.h"
#include "math.h"
#include "student.h"
#include <stdlib.h>

/**
 * Example for demonstration at start of test.
 */

int example(){
	return 42;
}

/**
 * Warmup (but counts for credit!)
 * Square the value x points to.
 */
void easyPeasy(int* x){
	/* basic squaring logic,
	 * but with POINTERS!!!
	 * ->->->->->->->->->->
	*/
	
	*x *= *x;
}

/**
 * Set a's first name to "Jigglypuff".
 * Set the last name to "Ketchum".
 * Set the g number to 10, the gpa to 1.16.
 */
void one(Student* a){
	//I feel like I'm missing a joke here . . .
	set_first_name(a, "Jigglypuff");
	set_last_name(a, "Ketchum");
	set_g_number(a, 10);
	set_gpa(a, 1.16);
}

/**
 * Copy the information from Student b to Student a.
 * (pointer parameters).
 */
void two(Student* a, Student* b){
	
	a -> first_name = b -> first_name;
	a -> last_name = b -> last_name;
	a -> g_number = b -> g_number;
	a -> gpa = b -> gpa;

}

/**
 * Copy the information from Student a to Student b.
 * (mixed variable type parameters).
 */

void three(Student a, Student* b){

	b -> first_name = a.first_name;
	b -> last_name = a.last_name;
	b -> g_number = a.g_number;
	b -> gpa = a.gpa;
}

/**
 * Create and return a Student.  Give it the values
 * "T. Yoshisaur" (first_name)
 * "Munchakoopas" (last_name)
 * 1990		  (g_number)
 * 3.1		  (gpa)
 * Mario	  (roommate [defined above])
 * Remember: C is pass by copy ONLY.
 */

Student four(){
	Student* z = (Student*)malloc(sizeof(Student));	
/*	z -> first_name = "T. Yoshisaur";
	z -> last_name = "Munchakoopas";
	z -> g_number = 1990; //wow!
	z -> gpa = 3.1;
*/	
	set_first_name(z, "T. Yoshisaur");
	set_last_name(z, "Munchakoopas");
	set_g_number(z, 1990);
	set_gpa(z, 3.1);
	set_roommate(z, &Mario);

	return *z;
}

/**
 * Create and return a Student*.  Give it the value
 * "Luigi" (first_name)
 * "Mario" (last_name)
 * 2       ( :( )
 * 3.54    (gpa [we know he's the smart one])
 * Remember: C is pass by copy ONLY.
 */
Student* five(){
	//at this point, I'm just referencing the test cases
	//Test Case for ThreeTest
	Student* anon = (Student*)malloc(sizeof(Student));

	
	set_first_name(anon, "Luigi");
	set_last_name(anon, "Mario");
	set_g_number(anon, 2);
	set_gpa(anon, 3.54);
	
	return anon;
}

/**
 * Create a hunk of memory we can use as an array of 10
 * Students.  Set the 4th element (meaning use array
 * index 3) to
 *
 * "Luigi" (first_name)
 * "Mario" (last_name)
 * 2       ( :( )
 * 3.54    (gpa [we know he's the smart one])
 */
Student* six(){
	Student* contents = (Student*)malloc(10 * sizeof(Student));

	set_first_name(&contents[3], "Luigi");
	set_last_name(&contents[3], "Mario");
	set_g_number(&contents[3], 2);
	set_gpa(&contents[3], 3.54);

	return contents;
}

/**
 * Seven will take a pointer to a pointer.  It should
 * create a hunk of memory that can be used as an array
 * of size 10, and will set the pointer correctly so
 * that the "array" is usable in main.
 * Set the 10th (index 9) element equal to
 *
 * "Luigi" (first_name)
 * "Mario" (last_name)
 * 2       ( :( )
 * 3.54    (gpa [we know he's the smart one])
 */
void seven(Student** students){
	students = (Student**)malloc(10 * sizeof(Student*));

	//testing 4th student in main.c
	
	students[3] -> first_name = "Luigi";
	students[3] -> last_name = "Mario";
	students[3] -> g_number = 2;
	students[3] -> gpa = 3.54;
	/*
	set_first_name(students[3], "Luigi");
	set_last_name(students[3], "Mario");
	set_g_number(students[3], 2);
	set_gpa(students[3], 3.54);
	*/
}

/**
 * Given a, b, and c calculate the first solution for
 * the quadratic equation (given below).
 *
 * -b + sqrt(b^2 - 4ac) / (2a)
 */
double quadratic(double a, double b, double c){
	//no error checking (e.g. negative numbers)
	double discriminant = 0.0;

	discriminant = (b * b) - (4 * a * c);
	discriminant = sqrt(discriminant);

	return ((-b + discriminant) / (2 * a));
}

/**
 * Given a "string" (a character array) and a length,
 * replace each lower case character with its uppercase
 * equivalent.
 *
 * Do not use any string functions provided by the library.
 * Merely check to see if each character is between the
 * range of values for a lowercase letter.  If it is,
 * replace it with the uppercase value equivalent.
 *
 * If you are writing more than five lines you are doing it wrong.
 */
#include <stdio.h>
void capitalize(char* str, size_t len){
	for (int i = 0; i < len; i++) {
		if (str[i] >= 97 && str[i] <= 122)
			str[i] -= 32;
	}
}
