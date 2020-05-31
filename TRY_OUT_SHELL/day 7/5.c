#include<stdio.h>
#include <unistd.h>
#include<stdlib.h>
#include <signal.h>
void fun(int sig)
{	
switch (sig)
{
case SIGSEGV:
	printf("mhhjhj");
	exit (0);
	break;
	abort();
	default:
	printf("expextxting===");

}
}
int main(int argc, char *argv[])
{
	signal (SIGSEGV, fun);
       	char a=argv[1][0];
	
}

