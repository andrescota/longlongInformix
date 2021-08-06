#include <stdio.h>
#include <stdlib.h>
#include <string.h>

EXEC SQL include sqlca;

int main()
{
   long long t;
   bigint w;
   EXEC SQL BEGIN DECLARE SECTION;
	bigint x;
	long y;
	//long long z;
   EXEC SQL END DECLARE SECTION;

	t = 9223372036854775805;
	w = 9223372036854775805;
	x = 9223372036854775805;
	y = 9223372036854775805;
	//z = 9223372036854775805;

	printf("t size: [%ld] [%lld]\n", sizeof(t), t);
	printf("w size: [%ld] [%lld]\n", sizeof(w), w);
	printf("x size: [%ld] [%lld]\n", sizeof(x), x);
	// printf("z size: [%ld] [%lld]\n", sizeof(z), z);

	return(0);
}
