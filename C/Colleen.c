#include <stdio.h>
void test(char *str){printf(str,10,34,str);}
int main(){
char *str="#include <stdio.h>%1$cvoid test(char *str){printf(str,10,34,str);}%1$cint main(){%1$cchar *str=%2$c%3$s%2$c;%1$ctest(str);/* 1er com */}%1$c/* 2em com */%1$c";
test(str);/* 1er com */}
/* 2em com */
