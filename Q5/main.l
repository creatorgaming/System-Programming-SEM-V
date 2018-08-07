%{
	int indentifier_count = 0, keyword_count = 0;
%}

/* IDENTIFIER [a-zA-Z_]+[a-zA-Z0-9_]* */

%%
static|if|else|#include|int|float|double|char {++keyword_count;}
[_A-Za-z]+[_A-Za-z0-9]*  {++indentifier_count;}
%%

int main(){	
	yyin = fopen("program.txt","r");
	yylex();
	printf("Number of Indentifier : %d\n", indentifier_count);
}

int yywrap(){
	return 1;
}
