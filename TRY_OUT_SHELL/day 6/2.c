#include <stdio.h>
#include<stdlib.h> 
#include<sys/wait.h> 
#include<unistd.h>

int main(int argc,char *argv[])
{

	pid_t pid;
	int stat;
	int option1,option2;
	printf("hii i am parent my name is %d\n",getpid());
	
	pid=fork();

	if(pid==0)
	{
		//sleep(2);
		printf("Exit status: %d\n", WEXITSTATUS(stat));
		printf("entered value is : %s\n", argv[1]);
		printf("i am child of  %d and my name is %d\n",getppid(),getpid());
	}
	else
	{
		//sleep(1);
		printf("i have child his/her name is : %d\n",pid);
		wait(&stat);
		printf("Exit status: %d\n", WEXITSTATUS(stat));
	}
	
}
