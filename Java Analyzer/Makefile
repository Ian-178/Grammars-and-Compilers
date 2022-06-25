all:
	bison -v -d -l JavaYacc.y
	flex JavaLex.l
	gcc -c lex.yy.c JavaYacc.tab.c 
	gcc -o Java.exe lex.yy.o JavaYacc.tab.o
	Java.exe input.java

debug:
	bison -v -d -l JavaYacc.y --debug
	flex JavaLex.l
	gcc -c lex.yy.c JavaYacc.tab.c
	gcc -o Java.exe lex.yy.o JavaYacc.tab.o 
	Java.exe input.java