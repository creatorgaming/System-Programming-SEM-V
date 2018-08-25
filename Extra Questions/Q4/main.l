%{

%}


%%

%%

int main(){
    yyin = fopen("input_Q4_E.txt", "r");
    yylex();
}

int yywrap(){
    return 1;
}