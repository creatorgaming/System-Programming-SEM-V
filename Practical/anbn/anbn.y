%{ 
  #include<stdio.h> 
  //int valid=0,temp; 
%} 
%token A B 
 
%% 
    S : A S B | A B ; 
%% 
 
main() 
{ 
 printf("\n Enter the string : "); 
 if(yyparse()==0) 
 printf("\nSUCCESS"); 
  
 return 0; 
} 
 
int yyerror(char *s) 
{ 
  printf("Invalid Expression."); 
 
} 
