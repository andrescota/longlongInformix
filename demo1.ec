#include <stdio.h>
#include <stdlib.h>
#include <string.h>

EXEC SQL include sqlca;

void f(
		EXEC SQL BEGIN DECLARE SECTION;
		PARAMETER bigint *a
		EXEC SQL END DECLARE SECTION;
	  ){

	EXEC SQL BEGIN DECLARE SECTION;
	bigint b;
	EXEC SQL END DECLARE SECTION;

	printf("Hi [%lld]!\n", *a);

	EXEC SQL connect to 'tch@efs92_online1';

	if(SQLCODE != 0){
	   printf("erro connecting\n");
	   return;
	}

	EXEC SQL select 9223372036854775807
		into :b
	   	from systables where tabid=1;

	*a = b;

	EXEC SQL disconnect current;

	return;
}

int main()
{
   long long t;
   bigint w;
   EXEC SQL BEGIN DECLARE SECTION;
	bigint x;
	long y;
	//long long z;    // INFORMIX DOES NOT IMPLEMNT long long INSIDE A 'DECLARE' BLOCK
   EXEC SQL END DECLARE SECTION;

	t = 9223372036854775803;
	w = 9223372036854775804;
	x = 9223372036854775805;
	y = 9223372036854775806;
	//z = 9223372036854775805;

	printf("t size: [%ld] [%lld]\n", sizeof(t), t);
	printf("w size: [%ld] [%lld]\n", sizeof(w), w);
	printf("x size: [%ld] [%lld]\n", sizeof(x), x);
	printf("y size: [%ld] [%lld]\n\n", sizeof(y), y);
	// printf("z size: [%ld] [%lld]\n", sizeof(z), z);

	f(&t); // Compiled! But return -Wincompatible-pointer-types warning
	f(&w);
	f(&x);
	f(&y);
	//f(&z);

	printf("\n");

	printf("after f() t size: [%ld] [%lld]\n", sizeof(t), t);
	printf("after f() w size: [%ld] [%lld]\n", sizeof(w), w);
	printf("after f() x size: [%ld] [%lld]\n", sizeof(x), x);
	printf("after f() y size: [%ld] [%lld]\n", sizeof(y), y);
	// printf("after f() z size: [%ld] [%lld]\n", sizeof(z), z);
	return(0);
}
