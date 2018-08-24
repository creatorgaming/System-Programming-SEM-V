%{
    int keyword_count = 0, integers_count = 0, float_count = 0;
    int identifiers_count = 0, operators_count = 0, comments_count = 0;
%}
KEYWORDS int|float|double|#include|printf|char|cout|struct|cin
INTEGERS [0-9]+
FLOATS   [0-9]+[\.][0-9]*
IDENTIFIERS [_A-Za-z]+[_A-Za-z0-9]*
OPERATORS [(\-\-)(\+\+)\+\-\/\*\{\}(>=)(<=)(>>)(<<)!><;:"']
COMMENTS  [\/][\/](.)*|[\/][\*](.|\n)*[\*][\/]
%%
{KEYWORDS} {printf("\tKeyword -> %s \n", yytext);
            ++keyword_count;
           }
{INTEGERS} {printf("\tIntegers -> %s \n", yytext);
            integers_count++;
           }
{FLOATS}   {printf("\tFloats -> %s \n", yytext);
            float_count++;
           }
{IDENTIFIERS} {printf("\tIdentifiers -> %s \n", yytext);
               identifiers_count++;
              }
{COMMENTS}  {printf("\tCOMMENTS -> %s \n", yytext);
            comments_count++;
            }
{OPERATORS} {printf("\tOperators -> %s \n", yytext);
            operators_count++;}
%%

int main(){
    yyin = fopen("input_Q4.txt","r");
    yylex();
    printf("Number of Keywords : %d\n", keyword_count);
    printf("Number of Integers : %d\n", integers_count);
    printf("Number of Floats : %d\n", float_count);
    printf("Number of Indentifier : %d\n", identifiers_count);
    printf("Number of Operators : %d\n", operators_count);
    printf("Number of Comments : %d\n", comments_count);
}

int yywrap(){
    return 1;
}