#include "type.h"
#include <stdio.h>

void printAcct(account* acc) {
	printf("%d: %s has $%.2f\n", acc->id, acc->name, acc->balance);
}
