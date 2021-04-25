#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>

int c = 0;

void count(int start, int end, int inc){
	for(int i=start; i<end; i += inc){
		c = c + 1;
		printf("%d\n", c);
		sleep(1);
	}
}

int main(int argc, char** argv){
	printf("Yo, sup?!\n");

	int pid = fork();

	if( pid == 0){
		count(0, 10, 2);
		sleep(2);
	} else {
		count(1, 10, 2);
		printf("Waiting on %d.\n", pid);
	}
	wait(NULL);
}
