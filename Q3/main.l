%{
    #include <string.h>
    long int longest_length = 0;
    char* longest_string;
%}

%%
[A-Za-z]* {
                if(longest_length < yyleng) {
                    longest_string = (char*) calloc(yyleng, sizeof(char));
                    strcpy(longest_string,yytext);
                    longest_length = yyleng;
                }
            }
%%

int main(){
    yyin = fopen("input_Q3.txt","r");
    yylex();
    printf("Longest string in text : %s\n", longest_string);
}

int yywrap(){
    return 1;
}