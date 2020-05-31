#include <stdio.h>
#include<stdlib.h> 
#include<sys/wait.h> 
#include<unistd.h>

int main()
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
		printf("i am child of  %d and my name is %d\n",getppid(),getpid());
	}
	else
	{
		//sleep(1);
		printf("i have child his/her name is : %d\n",pid);
		wait(&stat);
		printf("Exit status: %d\n", WEXITSTATUS(stat));
	}
	//printf("i have child his/her name is : %d\n",getppid());
	/*
	printf("Enter your Option \n Press 1 for Parent:\n Press 2 for child:\n");
	scanf("%d\n",&option1);
	if(option1==1)
	{
		printf("you choosed Parent. name is %d\n",getpid());
		printf("1 to Yes? or 2 to No? choice is yours\n");
		scanf("%d\n",&option2);
	}
	*/
	
}
