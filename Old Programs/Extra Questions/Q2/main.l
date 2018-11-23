%{

%}
VALID_DATE ([0-9]*-(((0)(1|3|5|7|8))|10|12)-([0-2][0-9]|(30|31)))|([0-9]*-(((0)(4|6|9))|11)-([0-2][0-9]|(30)))|([0-9]*-(02)-[0-2][0-8])
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