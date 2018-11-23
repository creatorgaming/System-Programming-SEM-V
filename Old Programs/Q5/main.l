%{
	int indentifier_count = 0;
%}

%%
[_A-Za-z]+[_A-Za-z0-9]*	  {++indentifier_count;}
%%

int main(){	
	yyin = fopen("input_Q5.txt","r");
	yylex();
	printf("Number of Indentifier : %d\n", indentifier_count);
}

int yywrap(){
	return 1;
}
