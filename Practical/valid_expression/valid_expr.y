%{
#include<stdio.h>
%}

//definition section


%token NUMBER ID                       // token from lex file
%left '+' '-'                                           // left associative 
%left '*' '/'
%%

expr: expr '+' expr                                        // grammer production rule 
     |expr '-' expr
     |expr '*' expr
     |expr '/' expr
     |'-'NUMBER
     |'-'ID
     |'('expr')'
     |NUMBER
     |ID
     ;
%%

//main function

main()
{
int z;
printf("Enter the expression\n");
yyparse(); 
printf("\n Expresssion is valid");
}

//if error occured 

int yyerror(char *s)
{
printf("\nExpression is invalid\n");
exit(0);
}



