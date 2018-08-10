%{
    int size_string = 0, i = 0, j = 0;
%}

%%
[A-Za-z0-9]* {
                size_string = yyleng;
                for(i = 0; i < size_string; i++){
                    for(j = 0; j < size_string - i; j++){
                        printf("%c", yytext[j]);
                    }
                    printf("\n");
                }
            }
%%

int main(){
    yyin = fopen("input_Q7.txt","r");
    yylex();
}

int yywrap(){
    return 1;
}