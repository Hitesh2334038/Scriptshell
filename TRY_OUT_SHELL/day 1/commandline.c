#include <stdio.h>
int main(int argc, char * argv[])
{	
	int i,j,k;
	char temp;
	FILE *p;
	printf("Total inputs : %d\n",argc);
	
	p=fopen("mixed.cpp","w");	

	for(i=1;i<argc;i++)
	{
		printf("values in %d : %s\n",i,argv[i]);
		fwrite(argv[i],1,1,p);
	}

	printf("\n sorting........\n");

	
	for(j=1;j<argc-1;j++)
	{
		for(k=j+1;k<argc;k++)
		{
			if(argv[j][0]<argv[k][0])
			{
				temp=argv[j][0];
				argv[j][0]=argv[k][0];
				argv[k][0]=temp;	
			}
		}
	}
	for(i=1;i<argc;i++)
	{
		printf("values in %d : %s\n",i,argv[i]);
	}


	fclose(p);
	

}
