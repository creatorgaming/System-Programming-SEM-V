%{ 
  #include<math.h> 
  #include "y.tab.h" 
  #define yywrap() 1
  int extern yylval; 
%} 

%% 
[a] {return A;} 
[b] {return B;} 
\n  {return 0;}
.   {return yytext[0];}
%% 

