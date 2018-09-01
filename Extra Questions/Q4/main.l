%{
    int pos_frac = 0, neg_frac = 0;
%}
FRAC_POS [0-9][0-9]*\/[0-9][0-9]*|(-)[0-9][0-9]*\/(-)[0-9][0-9]*|[0-9][0-9]*
FRAC_NEG (-)[0-9][0-9]*\/[0-9][0-9]*|[0-9][0-9]*\/(-)[0-9][0-9]*|-[0-9][0-9]*
%%
{FRAC_POS} {printf("POS FRAC : %s",yytext); pos_frac++;}
{FRAC_NEG} {printf("NEG FRAC : %s",yytext); neg_frac++;}
%%

int main(){
    yyin = fopen("input_Q4_E.txt", "r");
    yylex();
}

int yywrap(){
    return 1;
}