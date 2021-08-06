#include <stdio.h>
#include <stdlib.h>
#include <string.h>

EXEC SQL include sqlca;

void f(
		EXEC SQL BEGIN DECLARE SECTION;
		PARAMETER bigint a
		EXEC SQL END DECLARE SECTION;
	  ){
		 printf("Hi [%lld]!\n", a);
}

int main()
{
   long long t;
   bigint w;
   EXEC SQL BEGIN DECLARE SECTION;
	bigint x;
	long y;
	//long long z;
   EXEC SQL END DECLARE SECTION;

	t = 9223372036854775803;
	w = 9223372036854775804;
	x = 9223372036854775805;
	y = 9223372036854775806;
	//z = 9223372036854775805;

	printf("t size: [%ld] [%lld]\n", sizeof(t), t);
	printf("w size: [%ld] [%lld]\n", sizeof(w), w);
	printf("x size: [%ld] [%lld]\n", sizeof(x), x);
	printf("y size: [%ld] [%lld]\n", sizeof(y), y);
	// printf("z size: [%ld] [%lld]\n", sizeof(z), z);

	f(t);
	f(w);
	f(x);
	f(y);
	//f(z);

	return(0);
}
