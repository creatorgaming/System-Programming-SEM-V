%{

%}
COMMENTS [\/][\/](.)*|[\/][\*](.|\n)*[\*][\/]
%%
COMMENTS    {
                
            }
%%

int main(){
    yyin = fopen("input_Q1_E.txt", "r");
    yyout = fopen("output_Q1_E.txt", "r");
    yylex();
}

int yywrap(){
    return 1;
}