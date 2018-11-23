%{
#include <stdio.h>
int regs[26];
int base;
%}
%%
%%
%%
int main()
{
 return(yyparse());
}
void yyerror(char *s)
{
  fprintf(stderr, "%s\n",s);
}
int yywrap()
{
  return(1);
}