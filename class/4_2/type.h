#ifndef		__H_NEW_TYPE__
#define		__H_NEW_TYPE__

//typedef union acc { - allows you to store the biggest item - generally pretty bad for readability and writability
typedef struct acc {
	char* name;
	int id;
	double balance;
} account;

void printAcct(account* acc);

//typedef struct acc account;

#endif
