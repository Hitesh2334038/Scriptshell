#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int main()
{
	char * line = NULL;
    	size_t len = 0;
    	ssize_t read;	
	
	FILE *read_fp,*write_fp,*c,*d,*ch,*di,*pipe;
	char buffer[BUFSIZ + 1],buffer1[BUFSIZ + 1];
	int chars_read;
	memset(buffer, '\0', sizeof(buffer));
	memset(buffer1, '\0', sizeof(buffer1));
	read_fp = popen("ls -l /dev", "r");
	write_fp=fopen("test.txt","w+");
	if (read_fp != NULL) 
	{
		chars_read = fread(buffer, sizeof(char), BUFSIZ, read_fp);
		if (chars_read > 0) 
		{
			fwrite(buffer, sizeof(char), BUFSIZ, write_fp);
		}
	}
	fclose(write_fp);
	pclose(read_fp);
	write_fp=fopen("test.txt","r+");
	c=fopen("Char.txt","a");
	d=fopen("dir.txt","a");
	ch=fopen("oct_char.txt","a");
	di=fopen("oct_dir.txt","a");

	while ((read = getline(&line, &len, write_fp)) != -1) 
	{
		
		if(line[0] == 'c')
		{
			
			int count=0,num=0;
			char* token = strtok(line, " ");			
			while (token != NULL) 
			{ 	
				if(num==9)
				{
					while(token[count]!='\0')
					{
						count++;
					}
					sprintf(buffer1, "%s",token);
					write_fp = popen("od -c", "w");
					if (write_fp != NULL)
					{
						cat >> fwrite(write_fp, sizeof(char), strlen(buffer1), ch);
						pclose(write_fp);
						exit(EXIT_SUCCESS);
					}
					fwrite(token, sizeof(char), count , c);
				} 
				token = strtok(NULL, " ");
				num++;
    			} 
		}
		if(line[0] == 'd')
		{
			int count=0,num=0;
			char* token = strtok(line, " ");
			while (token != NULL) 
			{ 	
				if(num==8)
				{
					while(token[count]!='\0')
					{
						count++;
					}
					fwrite(token, sizeof(char), count , d);
        				
				} 
				token = strtok(NULL, " ");
				num++;
    			} 
			
		}
    	}
	fclose(write_fp);
	fclose(c);
	fclose(d);
}
