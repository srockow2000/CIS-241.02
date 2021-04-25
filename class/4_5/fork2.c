#include <stdio.h>
#include <unistd.h>
#include  <wait.h>
#include <sys/types.h>

int counter = 0;


int main(int argc, char** argv) {

	printf("Hello!\n\n");
	int pid = fork();

	if (pid != 0) {
		counter++;
		printf("This is Batman %d\n", counter);
		sleep(5);
	}

	else {
		sleep(1);
		counter++;
		printf("I'm not here %d\n", counter);
	}

	waitpid(1, NULL, 0);
	printf("I'm done.\n");
}
