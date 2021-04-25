#include <stdio.h>
#include <unistd.h>
#include  <wait.h>
#include <sys/types.h>


int main(int argc, char** argv) {

	printf("Hello!\n\n");
	int pid = fork();

	if (pid != 0) {
		printf("This is Batman\n");
		sleep(5);
	}

	else {
		sleep(1);
		printf("I'm not here\n");
	}

	waitpid(1, NULL, 0);
	printf("I'm done.\n");
}
