%{

%}

%%

%%

int main(){
    yyin = fopen("input_Q3_E.txt", "r");
    yylex();
}

int yywrap(){
    return 1;
}