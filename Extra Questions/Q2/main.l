%{

%}
VALID_DATE [0-9]*-(0[0-9]|1(0|1|2))-
%%
{VALID_DATE} {printf("Valid Date :- %s",yytext);}
%%

int main(){
    yyin = fopen("input_Q2_E.txt", "r");
    yylex();
}

int yywrap(){
    return 1;
}