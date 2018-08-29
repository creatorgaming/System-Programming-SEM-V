%{
    int vowels = 0, consonents = 0;
%}
VOWELS a|e|i|o|u|A|E|I|O|U
CONSONENTS [a-zA-Z]
%%
{VOWELS} {
            vowels++;
         }
{CONSONENTS} {
                consonents++;
             }

%%

int main(){
    yyin = fopen("input_Q3_E.txt", "r");
    yylex();
    printf("Number of vowels : %d\n", vowels);
    printf("Number of consonents : %d\n", consonents);
}

int yywrap(){
    return 1;
}