#include <stdio.h>
#include <stdlib.h>
int main(int argc,char *argv[])
{
	int a,b,ans;
	
	a=atoi(argv[1]);
	b=atoi(argv[2]);
	ans=a+b;
	printf("%d + %d = %d",a,b,ans);
}
