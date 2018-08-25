%{

%}

%%
%%

int main(){
    yyin = fopen("input_Q2_E.txt", "r");
    yylex();
}

int yywrap(){
    return 1;
}