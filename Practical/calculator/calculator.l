%{
#include "y.tab.h"
#include<stdio.h>
#define yywrap() 1
extern int yylval;
%}
%%

[0-9]+  {yylval=atoi(yytext); return NUMBER;}
.       {return yytext[0];}
[\t]+   ;
\n      {return 0;} 
%%

