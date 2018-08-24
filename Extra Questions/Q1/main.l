%{

%}
COMMENTS \/\/.*\n|\/\*(.|\n)*\*\/
%%
{COMMENTS} {
            printf(yytext);
            }
(.)   {
            fprintf(yyout,"%s",yytext);
         }
%%

int main(){
    yyin = fopen("input_Q1_E.txt", "r");
    yyout = fopen("output_Q1_E.txt", "w");
    yylex();
}

int yywrap(){
    return 1;
}