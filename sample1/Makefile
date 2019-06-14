
all: a.out

lex.yy.c: fb1-1.l
	flex fb1-1.l

a.out: lex.yy.c
	cc lex.yy.c -ll

