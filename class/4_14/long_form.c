#include <stdio.h>
#include <stdlib.h>
#include <getopt.h>

/* flag set by '--verbose' */
static int verbose_flag;

int main (int argc, char **argv) {
	int c;

	while (1) {
		static struct option long_options[] = 
		{
			/* these options set a flag*/

			{"verbose",	no_argument,	&verbose_flag, 1},
			{"brief", 	no_argument,	&verbose_flag, 0},
			/* these options don't set a flag.
			 * we distinguish them by their indices.*/
			{"add",		no_argument,	0, 'a'},
			{"append",	no_argument,	0, 'b'},
			{"delete",	required_argument,	0, 'd'},
			{"create",	required_argument,	0, 'c'},
			{"file",	required_argument,	0, 'f'},
			{0, 0, 0, 0}
		};

		/* getopt long stores the option index here. */

		int option_index = 0;
		c = getopt_long (argc, argv, "abc:d:f:",
				long_options, &option_index);

		/*detect the end of the options.*/
		if (c == -1)
			break;

		switch(c) {
			case 0:
				/* if this option set a flag, do nothing else now */
				if (long_options[option_index].flag != 0)
					break;
				printf("option %s", long_options[option_index].name);
				break;
			case 'a':
				printf("option -a\n");
				break;

			case 'b':
				printf("option -b\n");
				break;
			case 'c':
				printf("option -c\n");
				break;
			case 'd':
				printf("option -d\n");
				break;
			case 'f':
				printf("Option -f with value %s\n", optarg);
				break;
			default:
				abort();
		}
	}
}





		

