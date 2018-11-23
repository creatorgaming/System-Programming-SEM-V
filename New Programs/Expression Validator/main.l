%{
  #include "y.tab.h"
  extern yylval;
%}
DIGITS [0-9]
OPERATOR (\+|\-|\/|\*)
IDENTIFIER [A-Za-z_]
%%
{DIGITS} {int yylval = atoi(yytext);return NUMBER;printf("%d\n",yylval);}
{OPERATOR} {return yytext;printf("%s\n",yytext);}
{IDENTIFIER} {return ID;printf("%d\n",yytext);}
\t {}
\n {return 0;}
%%
/*
int main(){
  yyin = fopen("input.txt", r);
  yylex();
  return 0;
}

int yywrap(){
  return 1;
}
*/