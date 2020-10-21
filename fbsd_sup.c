#include <ctype.h>
#include "def.h"
#include "hardware.h"

void strupr(char *str)
{
	while(*str != 0) {
		*str = (*str >= 'a' && *str <= 'z') ? *str + ('A' - 'a') : *str;
		str++;
	}
}

void catcher(int num) {
#ifndef _DINGOO
	fprintf(stderr, "Signal %d catched, exitting\n", num);
#endif
	graphicsoff();
	restorekeyb();
	exit(0);
}
	

