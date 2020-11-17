#include <stdio.h>
#include <fcntl.h>
#define STR char *str="#include <stdio.h>%1$c#include <fcntl.h>%1$c#define STR char *str=%2$c%3$s%2$c%1$c#define PRINTF 10,34,str%1$c#define PROGRAM int main(){STR;PRINTF;FILE *fd=fopen(%2$cGrace_kid.c%2$c,%2$cw%2$c); fprintf(fd,str,PRINTF);fclose(fd);}%1$cPROGRAM%1$c/* test */%1$c"
#define PRINTF 10,34,str
#define PROGRAM int main(){STR;PRINTF;FILE *fd=fopen("Grace_kid.c","w"); fprintf(fd,str,PRINTF);fclose(fd);}
PROGRAM
/* test */
