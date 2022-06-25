#include <stdio.h>
#include <string.h>
#define alloca malloc
int yylex();
void yyerror(const char *s);
int yydebug = 1;


int isdigit(int);
FILE* yyin;
int isSuccess = 1;

char strForError[9] = {0};
int PosForError = 0;

struct variableStruct
{
	int coeff;
	int degree;
};

struct expressionStruct
{
	int isActive[32];
	int count;
	int coeffsArray[64];
	int degreesArray[64];
};




struct expressionStruct InitExpr()
{
	struct expressionStruct initExpr;

	initExpr.count = 0;
	for (int i = 0; i < 64; ++i)
	{
		initExpr.isActive[i] = 0;
		initExpr.coeffsArray[i] = 0;
		initExpr.degreesArray[i] = 0;
	}

	return initExpr;
};


void PrintPoly(struct expressionStruct expressionPrint)
{
	// printf("Result poly: ");
	// printf("%d = count  ", expressionPrint.count);

	for (int i = 0; i < expressionPrint.count; ++i)
	{
		if(expressionPrint.degreesArray[i] == 0)
		{
			if(expressionPrint.coeffsArray[i] < 0)
			{
				if(i != 0)
					printf("- ");
				else
					printf("-");
				printf("%d ", -expressionPrint.coeffsArray[i]);
			}
			if(expressionPrint.coeffsArray[i] > 0)
			{
				if(i != 0)
					printf("+ ");
				printf("%d ", expressionPrint.coeffsArray[i]);
			}
			continue;
		}

		if(expressionPrint.degreesArray[i] == 1)
		{
			if(expressionPrint.coeffsArray[i] < 0)
			{
				if(i != 0)
					printf("- ");
				else
					printf("-");
				printf("%dx ", -expressionPrint.coeffsArray[i]);
			}
			if(expressionPrint.coeffsArray[i] > 0)
			{
				if(i != 0)
					printf("+ ");
				printf("%dx ", expressionPrint.coeffsArray[i]);
			}
			continue;
		}

		if(expressionPrint.coeffsArray[i] < 0)
		{
			if(i != 0)
				printf("- ");
			else
				printf("-");
			printf("%dx^%d ", -expressionPrint.coeffsArray[i], expressionPrint.degreesArray[i]);
		}
		if(expressionPrint.coeffsArray[i] > 0)
		{
			if(i != 0)
				printf("+ ");
			printf("%dx^%d ", expressionPrint.coeffsArray[i], expressionPrint.degreesArray[i]);
		}
		
	}

	printf("\n");
	return;
};