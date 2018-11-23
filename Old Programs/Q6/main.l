%{
	int word_count = 0, char_count = 0, space_count = 0, lines_count = 1;
%}

%%
[ \t]	{++space_count;char_count++;}
[\n]	{++lines_count;}
[_A-Za-z0-9]+[_A-Za-z0-9]* {++word_count;char_count += yyleng;}
.       {++char_count;}
%%

int main(){
	yyin = fopen("input.txt","r");
	yylex();
	printf("\nNumber of Characters 	   : %d\n", char_count);
	printf("Number of Space		   : %d\n", space_count);
	printf("Number of Lines 	   : %d\n", lines_count);
	printf("Number of Words 	   : %d\n", word_count);
}

int yywrap(){
	return 1;
}
