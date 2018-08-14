%{

%}

%%
[A-Z]+ {
        int length = yyleng;
        int i = 0;
        for(i = 0; i < yyleng; i++){
            printf("%c --> %c\n", yytext[i], 'A' + (yytext[i] - 'A' + 3) % 26);
        }
       }

[a-z]+ {
        int length = yyleng;
        int i = 0;
        for(i = 0; i < yyleng; i++){
            printf("%c --> %c\n", yytext[i], 'a' + (yytext[i] - 'a' + 3) % 26);
        }
       }
%%



int main(){
    yyin = fopen("input_Q2.txt","r");
    yylex();
   
}

int yywrap(){
    return 1;
}