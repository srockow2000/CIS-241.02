#include <stdio.h>
#include <unistd.h>

int main (int argc, char** argv) {
	
	printf("Running ls now: \n");
	char* args[] = { "ls", "-l", NULL };
	
	//execv - takes argument as vector; p = search system's search path
	int status = execvp("ls", args);
	printf("%d\n", status);
}
