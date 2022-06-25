%{
#include "funs.h"

void SortPoly(struct expressionStruct* exprToSort)
{
	if(exprToSort->count == 1)
	{
		return;
	}
	int tempInt1 = 0, tempInt2 = 0;

	for (int i = 0; i < exprToSort->count; ++i)
	{
		for (int j = 0; j < exprToSort->count; ++j)
		{
			if(exprToSort->degreesArray[j] < exprToSort->degreesArray[j + 1])
			{
				tempInt1 = exprToSort->degreesArray[j];
				tempInt2 = exprToSort->coeffsArray[j];

				exprToSort->degreesArray[j] = exprToSort->degreesArray[j + 1];
				exprToSort->coeffsArray[j] = exprToSort->coeffsArray[j + 1];

				exprToSort->degreesArray[j + 1] = tempInt1;
				exprToSort->coeffsArray[j + 1] = tempInt2;
			}
		}
	}
	return;
};

extern struct expressionStruct InitExpr();
extern void PrintPoly(struct expressionStruct expressionPrint);

void ZeroExpr(struct expressionStruct* exprToZero)
{
	for (int i = 0; i < 64; ++i)
	{
		exprToZero = 0;
	}
	return;
};


struct expressionStruct SumUP(struct expressionStruct* exp1, struct expressionStruct* exp2)
{
	struct expressionStruct tempExp;
	tempExp.count = 0;
	for (int i = 0; i < 64; ++i)
	{
		tempExp.coeffsArray[i] = 0;
		tempExp.degreesArray[i] = 0;
	}


	if(exp1->count == 1 && exp2->count == 1)
	{
		//printf("1v1\n");
		tempExp.coeffsArray[0] = exp1->coeffsArray[0];
		tempExp.degreesArray[0] = exp1->degreesArray[0];
		tempExp.count++;

		if(exp1->degreesArray[0] != exp2->degreesArray[0])
		{
			tempExp.coeffsArray[1] = exp2->coeffsArray[0];
			tempExp.degreesArray[1] = exp2->degreesArray[0];
			tempExp.count++;
		}
		else
		{
			tempExp.coeffsArray[0] += exp2->coeffsArray[0];
		}

		printf("temp exp: ");
		PrintPoly(tempExp);

		return tempExp;
	}


	int countToSum = 0, count2 = 0;
	if(exp1->count >= exp2->count)
	{
		countToSum = exp1->count;
		count2 = exp2->count;
		for (int i = 0; i < countToSum; ++i)
		{
			for (int j = 0; j < count2; ++j)
			{
				if(exp1->degreesArray[i] == exp2->degreesArray[j])
				{
					exp1->coeffsArray[i] += exp2->coeffsArray[j];
					exp2->coeffsArray[j] = 0;
					exp2->degreesArray[j] = -1;
				}
			}
		}

		for (int i = 0; i < count2; ++i)
		{
			if(exp2->degreesArray[i] != -1)
			{
				exp1->coeffsArray[exp1->count] = exp2->coeffsArray[i];
				exp1->degreesArray[exp1->count] = exp2->degreesArray[i];
				exp1->count++;
			}
		}

		SortPoly(exp1);
		tempExp.count = exp1->count;

		for (int i = 0; i < exp1->count; ++i)
		{
			tempExp.degreesArray[i] = exp1->degreesArray[i];
			tempExp.coeffsArray[i] = exp1->coeffsArray[i];
		}

		printf("temp exp: ");
		PrintPoly(tempExp);
	}
	else
	{
		countToSum = exp2->count;
		count2 = exp1->count;
		
		for (int i = 0; i < countToSum; ++i)
		{
			for (int j = 0; j < count2; ++j)
			{
				if(exp2->degreesArray[i] == exp1->degreesArray[j])
				{
					exp2->coeffsArray[i] += exp1->coeffsArray[j];
					exp1->coeffsArray[j] = 0;
					exp1->degreesArray[j] = -1;
				}
			}
		}

		for (int i = 0; i < count2; ++i)
		{
			if(exp1->degreesArray[i] != -1)
			{
				exp2->coeffsArray[exp2->count] = exp1->coeffsArray[i];
				exp2->degreesArray[exp2->count] = exp1->degreesArray[i];
				exp2->count++;
			}
		}

		SortPoly(exp2);
		tempExp.count = exp2->count;

		for (int i = 0; i < exp2->count; ++i)
		{
			tempExp.degreesArray[i] = exp2->degreesArray[i];
			tempExp.coeffsArray[i] = exp2->coeffsArray[i];
		}


		printf("temp exp: ");
		PrintPoly(tempExp);
	}


	return tempExp;
}
;

void shiftArrays(struct expressionStruct* exp1, int start)
{
	for (int i = start; i < exp1->count - 1; ++i)
	{
		exp1->coeffsArray[i] = exp1->coeffsArray[i + 1];
		exp1->degreesArray[i] = exp1->degreesArray[i + 1];
	}

	exp1->coeffsArray[exp1->count] = 0;
	exp1->degreesArray[exp1->count] = 0;
	exp1->count--;

	return;
};

struct expressionStruct Subtrac(struct expressionStruct* exp1, struct expressionStruct* exp2)
{
	struct expressionStruct tempExp;
	tempExp.count = 0;
	for (int i = 0; i < 64; ++i)
	{
		tempExp.coeffsArray[i] = 0;
		tempExp.degreesArray[i] = 0;
	}


	if(exp1->count == 1 && exp2->count == 1)
	{
		printf("1v1\n");
		tempExp.coeffsArray[0] = exp1->coeffsArray[0];
		tempExp.degreesArray[0] = exp1->degreesArray[0];
		tempExp.count++;

		if(exp1->degreesArray[0] != exp2->degreesArray[0])
		{
			tempExp.coeffsArray[1] = -exp2->coeffsArray[0];
			tempExp.degreesArray[1] = exp2->degreesArray[0];
			tempExp.count++;
		}
		else
		{
			tempExp.coeffsArray[0] -= exp2->coeffsArray[0];
			if(exp2->coeffsArray[0] == 0)
				shiftArrays(exp1, 0);
		}

		printf("temp exp: ");
		PrintPoly(tempExp);

		return tempExp;
	}


	int countToSum = 0, count2 = 0;
	if(exp1->count >= exp2->count)
	{
		countToSum = exp1->count;
		count2 = exp2->count;
		for (int i = 0; i < countToSum; ++i)
		{
			for (int j = 0; j < count2; ++j)
			{
				if(exp1->degreesArray[i] == exp2->degreesArray[j])
				{
					exp1->coeffsArray[i] -= exp2->coeffsArray[j];
					if(exp1->coeffsArray[i] == 0)
						shiftArrays(exp1, i);
					exp2->coeffsArray[j] = 0;
					exp2->degreesArray[j] = -1;
				}
			}
		}

		for (int i = 0; i < count2; ++i)
		{
			if(exp2->degreesArray[i] != -1)
			{
				exp1->coeffsArray[exp1->count] = -exp2->coeffsArray[i];
				exp1->degreesArray[exp1->count] = exp2->degreesArray[i];
				exp1->count++;
			}
		}

		SortPoly(exp1);
		tempExp.count = exp1->count;

		for (int i = 0; i < exp1->count; ++i)
		{
			tempExp.degreesArray[i] = exp1->degreesArray[i];
			tempExp.coeffsArray[i] = exp1->coeffsArray[i];
		}

		printf("temp exp: ");
		PrintPoly(tempExp);
	}
	else
	{
		countToSum = exp2->count;
		count2 = exp1->count;
		
		for (int i = 0; i < countToSum; ++i)
		{
			for (int j = 0; j < count2; ++j)
			{
				if(exp2->degreesArray[i] == exp1->degreesArray[j])
				{
					exp2->coeffsArray[i] -= exp1->coeffsArray[j];
					if(exp2->coeffsArray[i] == 0)
						shiftArrays(exp1, i);
					exp1->coeffsArray[j] = 0;
					exp1->degreesArray[j] = -1;
				}
			}
		}

		for (int i = 0; i < count2; ++i)
		{
			if(exp1->degreesArray[i] != -1)
			{
				exp2->coeffsArray[exp2->count] -= exp1->coeffsArray[i];
				exp2->degreesArray[exp2->count] = exp1->degreesArray[i];
				exp2->count++;
			}
		}

		SortPoly(exp2);
		tempExp.count = exp2->count;

		for (int i = 0; i < exp2->count; ++i)
		{
			tempExp.degreesArray[i] = exp2->degreesArray[i];
			tempExp.coeffsArray[i] = exp2->coeffsArray[i];
		}


		printf("temp exp: ");
		PrintPoly(tempExp);
	}

	return tempExp;
}
;


void similarExpr(struct expressionStruct* tempExp)
{

	return;
}
;


struct expressionStruct Multiply(struct expressionStruct* exp1, struct expressionStruct* exp2)
{
	int tempInt = 0;
	int tempBool = 0;
	struct expressionStruct tempExp;
	tempExp.count = 0;
	for (int i = 0; i < 64; ++i)
	{
		tempExp.coeffsArray[i] = 0;
		tempExp.degreesArray[i] = 0;
	}

	for (int i = 0; i < exp2->count; ++i)
	{
		for (int j = 0; j < exp1->count; ++j)
		{
			tempBool = 0;
			tempInt = exp1->degreesArray[j] + exp2->degreesArray[i];
			for (int k = 0; k < tempExp.count; ++k)
			{
				if(tempInt == tempExp.degreesArray[k])
				{
					tempExp.coeffsArray[k] += exp1->coeffsArray[j]*exp2->coeffsArray[i];
					printf("not new\n");
					tempBool = 1;
					continue;
				}
			}
			if(tempBool != 1)
			{
				tempExp.degreesArray[tempExp.count] = tempInt;
				tempExp.coeffsArray[tempExp.count] = exp1->coeffsArray[j]*exp2->coeffsArray[i];
				tempExp.count++;
			}
		}
	}


	// similarExpr(&tempExp);


	return tempExp;
}
;

struct expressionStruct doAction(struct expressionStruct* exp1, char* Sign, struct expressionStruct* exp2)
{
	struct expressionStruct tempStruct;

	printf("\n--------------Trying to ", Sign);
	if(Sign == (char*)'+')
	{
		printf("sum up %dx^%d;%dx^%d and %dx^%d----------------\n\n", exp1->coeffsArray[0], exp1->degreesArray[0], exp1->coeffsArray[1], exp1->degreesArray[1],
			exp2->coeffsArray[0], exp2->degreesArray[0]);
		tempStruct = SumUP(exp1, exp2);
	}

	if(Sign == (char*)'-')
	{
		printf("subtrac %dx^%d and %dx^%d----------------\n\n", exp1->coeffsArray[0], exp1->degreesArray[0], exp2->coeffsArray[0], exp2->degreesArray[0]);
		tempStruct = Subtrac(exp1, exp2);
	}

	if(Sign == (char*)'*')
	{
		printf("multiply %dx^%d and %dx^%d----------------\n\n", exp1->coeffsArray[0], exp1->degreesArray[0], exp2->coeffsArray[0], exp2->degreesArray[0]);
		tempStruct = Multiply(exp1, exp2);
	}

	return tempStruct;
}

void converseToExpression(struct expressionStruct* exp, struct variableStruct var)
{
	exp->count = 1;
	exp->coeffsArray[0] = var.coeff;
	exp->degreesArray[0] = var.degree;
	exp->isActive[0] = 1;


	return;
}

%}


%union
{
	struct expressionStruct 	exp;
	struct variableStruct		var;
	int 						num;
	char *						str;
}

%token<num> t_DIGIT
%token<str> t_SignPlus
%token<str> t_SignMinus
%token<str> t_SignMulti
%token<str> t_END
%token<str> t_Obracket
%token<str> t_Cbracket


%type <var>		variable
%type <exp> 	expression
%type <num> 	number


%left t_SignMinus t_SignPlus
%left t_SignMulti

%%

main:
	expression t_END
	{
		// $1 = InitExpr();		
		printf("main -> expression t_END\n");
		PrintPoly($1);
	}
	;

expression:
	t_Obracket expression t_Cbracket
	{
		$$ = InitExpr();
		$$ = $2;
		printf("    expression -> (expression)\n");
	}
	| expression t_SignPlus expression
	{
		$$ = InitExpr();
		$$ = doAction(&$1, (char*)'+', &$3);
		printf("signPlus: ");
		PrintPoly($$);
		printf("\n");
		// printf("    expression -> expression + expression\n");
	}
	| expression t_SignMinus expression
	{
		$$ = InitExpr();
		$$ = doAction(&$1, (char*)'-', &$3);
		printf("SignMinus: ");
		PrintPoly($$);
		printf("\n");
		// printf("    expression -> expression - expression\n");
	}
	| expression t_SignMulti expression
	{
		$$ = InitExpr();
		$$ = doAction(&$1, (char*)'*', &$3);
		printf("SignMulti: ");
		PrintPoly($$);
		printf("\n");
		// printf("    expression -> expression * expression\n");
	}
	| variable
	{
		$$ = InitExpr();
		converseToExpression(&$$, $1);
		// printf("%d %d conversed to exp\n", $1.coeff, $1.degree);
		// printf("---Poly: ");
		// PrintPoly($$);
		// printf("\n");

		// printf("    expression -> variable\n");
	}
	;

/*
	int coeff = 0;
	int degree = 0;
*/

variable:						// ??? ???? ???? ?? ?????, ????? ? (zx^y, ?? z - ??????, x - ?????, y - ????)
	number
	{
		$$.coeff = $1;
		$$.degree = 0;
		// printf("number is %d", $1);
		printf("\t  variable -> %d\n", $1);
	}

	| 'x'
	{
		$$.coeff = 1;
		$$.degree = 1;
		printf("\t  variable -> x\n");
	}

	| 'x' '^' number
	{
		$$.coeff = 1;
		$$.degree = $3;
		printf("\t  variable -> x^%d\n", $3);
	}

	| number 'x'
	{
		$$.coeff = $1;
		$$.degree = 1;
		printf("\t  variable -> %dx\n", $1);
	}

	| number 'x' '^' number
	{
		$$.coeff = $1;
		$$.degree = $4;
		// printf("here = %d %d\n", $2, $3);
		printf("\t  variable -> %dx^%d\n", $1, $4);
	}
	;

number:
	t_DIGIT
	{
		$$ = $1;
		//printf("\t\there - %d %d\n", $$, yyval);
	} 
	| number t_DIGIT
	{
		$$ = 10*$$ + $2; 
		//printf("\t\tthere - %d %d\n", $$, yyval);
	}
	;


%% // ??? ??? ? ?????, ???? ??? ? ?????



void shiftErrorStr()
{
	strForError[0] = strForError[1];
	strForError[1] = strForError[2];
	strForError[2] = strForError[3];
	strForError[3] = strForError[4];
	strForError[4] = strForError[5];
	strForError[5] = strForError[6];
	strForError[6] = strForError[7];
	
	return;
}

extern int yylex()
{
	int c;

	c = fgetc(yyin);

	while(c == ' ')
	{
		c = fgetc(yyin);
	}

	if(PosForError == 8)
	{
		shiftErrorStr();
		strForError[7] = c;
	}
	else
	{
		strForError[PosForError] = c;
		PosForError++;
	}

	if(isdigit(c))
	{
		yylval.num = c - '0';
		return t_DIGIT;
	}

	if(c == '-')
	{
		return t_SignMinus;
	}

	if(c == '+')
	{
		return t_SignPlus;
	}

	if(c == '*')
	{
		return t_SignMulti;
	}

	if(c == '#')
	{
		return t_END;
	}

	if(c == '(')
	{
		return t_Obracket;
	}

	if(c == ')')
	{
		return t_Cbracket;
	}


	return c;
}

extern void yyerror(const char *s)
{
	printf("Error compilation:\n");

	printf("\'%s\'\n", strForError);
	for (int i = 0; i < strlen(strForError); ++i)
		printf(" ");

	printf("^\n");

	isSuccess = 0;
    return;
};

int main()
{
	yyin = fopen("input.txt", "r");
	yyparse();

	fclose(yyin);

	if(isSuccess)
		printf("\n\tParse was successful\n");

	return 0;
};