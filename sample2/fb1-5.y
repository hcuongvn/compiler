/* simplest version of calculator */
%{
#include <stdio.h>
%}

/* declare tokens */
%token NUMBER
%token ADD SUB MUL DIV ABS
%token EOL

%%

calclist: /* nothing */
 | calclist exp EOL { printf("= %d\n", $2); }
 ;

/* ADD and SUB is lower priority */
exp: factor { printf("[bison] exp = %d\n", $1); /* $$ = $1; */ }
 | exp ADD factor { $$ = $1 + $3; }
 | exp SUB factor { $$ = $1 - $3; }
 ;

/* MUL and DIV is higher priority */
factor: term { printf("[bison] factor = %d\n", $1); /* $$ = $1; */ }
 | factor MUL term { $$ = $1 * $3; }
 | factor DIV term { $$ = $1 / $3; }
 ;

term: NUMBER { printf("[bison] term = %d\n", $1); /* $$ = $1; */ }
 | ABS term { $$ = $2 >= 0? $2 : - $2; }
;

%%

main(int argc, char **argv)
{
 yyparse();
}

yyerror(char *s)
{
 fprintf(stderr, "error: %s\n", s);
}
