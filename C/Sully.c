#include <stdio.h>
#include <fcntl.h>
#include <stdlib.h>
#include <string.h>
int main()
{
int i = 5;
if (strlen(__FILE__) == 7)
	i = i + 1;
char *str="#include <stdio.h>%1$c#include <fcntl.h>%1$c#include <stdlib.h>%1$c#include <string.h>%1$cint main()%1$c{%1$cint i = %5$d;%1$cif (strlen(__FILE__) == 7)%1$c%6$ci = i + 1;%1$cchar *str=%2$c%3$s%2$c;%1$cchar name[20], new[20], ex[100];%1$cif (i == 0)%1$c%6$creturn (0);%1$csprintf(name,%2$c%4$cs%4$cd%2$c,%2$cSully_%2$c, i - 1);%1$csprintf(new, %2$c%4$cs.c%2$c, name);%1$cFILE *fd=fopen(new,%2$cw%2$c);%1$cfprintf(fd,str,10,34,str,37,i-1, 9);%1$cfclose(fd);%1$csprintf(ex,%2$cgcc -o %4$cs %4$cs; ./%4$cs%2$c, name, new, name);%1$csystem(ex);%1$c}%1$c";
char name[20], new[20], ex[100];
if (i == 0)
	return (0);
sprintf(name,"%s%d","Sully_", i - 1);
sprintf(new, "%s.c", name);
FILE *fd=fopen(new,"w");
fprintf(fd,str,10,34,str,37,i-1, 9);
fclose(fd);
sprintf(ex,"gcc -o %s %s; ./%s", name, new, name);
system(ex);
}
