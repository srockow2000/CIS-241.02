#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>
#include <string.h>

int main(int argc, char** argv) {
	char command[80];
	int exit = 0;

	while (!exit) {
		printf("How may I help you? > \n");
		scanf("%79s", command);

		if (!strcmp(command, "exit")) 
			exit = 1;
		else {
			int pid = fork();
			if (pid == 0) {
				char* args[] = { "ls", "-l", NULL};
				int status = execvp(command, args);
				
				if (status == -1) {
					printf("Could not run that command.\n");
				}
			} else {
				wait(NULL);	
			}
		}
				
	}
}
