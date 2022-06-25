%{
	#include "funs.h"
	int debug = 0;
	int posPointError = -1;
	int WasZeroDegree = 0;
	void DoubleSignError(char SignToFind, char* ErrorToPrint)
	{
		for (int i = 0; i < 9; ++i)
			if(strForError[i] == SignToFind)
			{
				posPointError = i;
				break;
			}
		ErrorGot(ErrorToPrint, -1);
	};
%}


%union
{
	struct variableStruct	 	var;
	struct polynomStruct	 	pol;
	int 						num;
	char						symChar;
	// char						str[64];
}

%token<num> t_NUMBER
%token<symChar> t_SignPlus
%token<symChar> t_SignMinus
%token<symChar> t_SignMulti
%token<symChar> t_Obracket
%token<symChar> t_Cbracket
%token<symChar> t_PRINT
%token<symChar> t_LETTER
//%token<str> t_newLine


// %type <var>		t_VARIABLE
%type <pol> 	polynom
%type <pol> 	nextO_bracket
%type <num> 	digit
%type <num> 	digitBrace
// %type <str> 	varName
%type <symChar> 	variable


%left t_SignMinus t_SignPlus
%left t_SignMulti
%right '^'
%left	UMINUS

%%

main:
	| expression
	| main '\n' {PosForError = 0; numStr++;} expression
	//| '\n' {PosForError = 0; numStr++;}
	| main '\n' {PosForError = 0; numStr++;}
	;

expression:
	polynom
	{
		// PrintPoly($1);
	}
	| t_PRINT variable
	{
		numVariableCurrent = FindVar($2);
		if(numVariableCurrent == -1)
		{
			ErrorGot("Var $%c was not not initialized!\n", -1);
			// printf("Var $%c was not not initialized!\n", $2);
		}
		else
			PrintVar($2);
	
	}
	| variable '=' polynom
	{
		// printf("Init var %c with:\t", $1);
		// PrintPoly($3);
		InitVarWithPoly($1, $3);
	}
	;

variable:
	'$' t_LETTER
	{
		$$ = $2;
		// $$ = variablesArray[sizeVarArray - 1];
		// printf("\t\tvar name = %c\n", $$);
	}
	;

nextO_bracket:
	nextO_bracket t_Obracket polynom t_Cbracket
	{
		if($1.PolynomLetter != 0 && $3.PolynomLetter != 0)
		{
			if($1.PolynomLetter != $3.PolynomLetter)
			{
				ErrorGot("Different variables in polynom! (+)", -1);
			}
		}

		$$ = InitPolynom();
		
		if($1.PolynomLetter != 0)
			$$.PolynomLetter = $1.PolynomLetter;
		else
			$$.PolynomLetter = $3.PolynomLetter;

		if(debug)
		{
			printf("nextO_bracket polynom (x)(x)\n");
			printf("\t1:\t");
			PrintPoly($1);
			printf("\t2:\t");
			PrintPoly($3);
		}

		Multiply($1, $3, &$$);

		if(debug)
		{
			printf("\t3:\t");
			PrintPoly($$);
		}

		$$ = $1;
	}
	| t_Obracket polynom t_Cbracket
	{
		$$ = InitPolynom();
		
		if($2.PolynomLetter != 0)
			$$.PolynomLetter = $2.PolynomLetter;
	
		if(debug)
		{
			printf("polynom (x)\n");
			printf("\t3:\t");
			$$ = $2;
			PrintPoly($$);
		}
		else
			$$ = $2;
	}
	;

polynom:
	t_SignMinus polynom %prec UMINUS
	{
		// printf("!UNIMIN! For poly: ");
		if(debug) PrintPoly($2);
		$$ = InitPolynom();
		$$ = $2;
		// printf("polySize = %d\n", $$.polySize);
		for (int i = 0; i < $$.polySize; ++i)
		{
			// printf("%d = ", $$.coeffsArray[i]);
			$$.coeffsArray[i] = -$$.coeffsArray[i];
			// printf("%d\n", $$.coeffsArray[i]);
		}
		if(debug)
		{
			printf("!UNIMIN! Result: ");
			PrintPoly($$);
		}

		// $$.coeffsArray[0] = -$$.coeffsArray[0];
		// printf("UNIMIN RES:\t");
		// PrintPoly($$);
	}
	|
	t_Obracket polynom t_Cbracket
	{
		$$ = InitPolynom();
		$$ = $2;
	}
	| t_Obracket polynom t_Cbracket nextO_bracket
	{
		if($2.PolynomLetter != 0 && $4.PolynomLetter != 0)
		{
			if($2.PolynomLetter != $4.PolynomLetter)
			{
				ErrorGot("Different variables in polynom! (+)", -1);
			}
		}

		$$ = InitPolynom();
		
		if($2.PolynomLetter != 0)
			$$.PolynomLetter = $2.PolynomLetter;
		else
			$$.PolynomLetter = $4.PolynomLetter;


		if(debug)
		{
			printf("(x)(x)\n");
			printf("\t1:\t");
			PrintPoly($2);
			printf("\t2:\t");
			PrintPoly($4);
		}

		Multiply($2, $4, &$$);

		if(debug)
		{
			printf("\t3:\t");
			PrintPoly($$);
		}
	}
	| polynom t_SignPlus polynom
	{
		if($1.PolynomLetter != 0 && $3.PolynomLetter != 0)
		{
			if($1.PolynomLetter != $3.PolynomLetter)
			{
				ErrorGot("Different variables in polynom! (+)", -1);
			}
		}


		if(debug)
		{
			printf("Sum\n");
			printf("\t1:\t");
			PrintPoly($1);
			printf("\t2:\t");
			PrintPoly($3);
		}

		$$ = InitPolynom();
		
		if($1.PolynomLetter != 0)
			$$.PolynomLetter = $1.PolynomLetter;
		else
			$$.PolynomLetter = $3.PolynomLetter;

		SumUP_Subtrac($1, $3, &$$, '+');

		if(debug)
		{
			printf("\t3:\t");
			PrintPoly($$);
		}
	}
	| polynom t_SignMinus polynom
	{
		if($1.PolynomLetter != 0 && $3.PolynomLetter != 0)
		{
			if($1.PolynomLetter != $3.PolynomLetter)
			{
				ErrorGot("Different variables in polynom! (-)", -1);
			}
		}

		$$ = InitPolynom();
		if($1.PolynomLetter != 0)
			$$.PolynomLetter = $1.PolynomLetter;
		else
			$$.PolynomLetter = $3.PolynomLetter;



		if(debug)
		{
			printf("Minus\n");
			printf("\t1:\t");
			PrintPoly($1);
			printf("\t2:\t");
			PrintPoly($3);
		}
		
		SumUP_Subtrac($1, $3, &$$, '-');


		if(debug)
		{
			printf("\t3:\t");
			PrintPoly($$);
		}
	}
	| polynom t_SignMulti polynom
	{
		if($1.PolynomLetter != 0 && $3.PolynomLetter != 0)
		{
			if($1.PolynomLetter != $3.PolynomLetter)
			{
				ErrorGot("Different variables in polynom! (*)", -1);
			}
		}

		$$ = InitPolynom();
		if($1.PolynomLetter != 0)
			$$.PolynomLetter = $1.PolynomLetter;
		else
			$$.PolynomLetter = $3.PolynomLetter;


		if(debug)
		{
			printf("Multi\n");
			printf("\t1:\t");
			PrintPoly($1);
			printf("\t2:\t");
			PrintPoly($3);
		}
		
		Multiply($1, $3, &$$);


		if(debug)
		{
			printf("\t3:\t");
			PrintPoly($$);
		}
	}
	| polynom '^' digit
	{
		if($3 < 0)
			ErrorGot("Negative degree!", -1);


		if(debug)
		{
			printf("1 poly\t");
			PrintPoly($1);
			printf("\tInto %d degree (%d)\n", $3, WasZeroDegree);
		}

		if($1.polySize == 1 && $1.degreesArray[0] == 0 && $1.coeffsArray[0] == 0 && ($3 == 0 || WasZeroDegree))
			ErrorGot("1 0^0 action", -1);

		if($3 == 0 || WasZeroDegree)
		{
			$$ = InitPolynom();
			$$.PolynomLetter = $1.PolynomLetter;
			$$.coeffsArray[$$.polySize] = 1;
			$$.degreesArray[$$.polySize] = 0;
			$$.polySize++;
			WasZeroDegree = 0;
		}
		else
		{
			struct polynomStruct tempPoly;
			$$ = InitPolynom();
			$$.PolynomLetter = $1.PolynomLetter;
			$$ = $1;


			for (int i = 0; i < $3 - 1; ++i)
			{
				// printf("\tpoly^\t", $3);
				if(debug) PrintPoly($$);
				// for (int i = 0; i < $$.polySize; ++i)
				// {
					// tempPoly = InitPolynom();
					// tempPoly = $1;
					tempPoly = InitPolynom();
					Multiply($$, $1, &tempPoly);
					$$ = tempPoly;
					// $$.coeffsArray[i] *= $1;
				// }
				// Multiply($1, $3, &$$);
				// $$ = doAction(&$1, (char*)'*', &$3);; 
			}

			if(debug)
			{
				printf("\tResult: ");
				PrintPoly($$);
				printf("\n\n");
			}

		}
		$$.PolynomLetter = $1.PolynomLetter;
	}
	| polynom '^' t_Obracket digitBrace t_Cbracket
	{
		if($4 < 0)
			ErrorGot("Negative degree!", -1);

		if($1.polySize == 1 && $1.degreesArray[0] == 0 && $1.coeffsArray[0] == 0 && ($4 == 0 || WasZeroDegree))
			ErrorGot("2 0^0 action", -1);


		if(debug)
		{
			printf("2 poly\t");
			PrintPoly($1);
			printf("\tInto %d degree (%d)\n", $4, WasZeroDegree);
		}


		if($4 == 0 || WasZeroDegree)
		{
			$$ = InitPolynom();
			$$.coeffsArray[$$.polySize] = 1;
			$$.degreesArray[$$.polySize] = 0;
			$$.polySize++;
			WasZeroDegree = 0;
		}
		else
		{
			struct polynomStruct tempPoly;
			$$ = InitPolynom();
			$$ = $1;

			// if($1.polySize == 1 && $1.degreesArray[0] == 0 && $1.coeffsArray[0] == 0 && $4 == 0)
			// 	ErrorGot("2 0^0 action", -1);

			for (int i = 0; i < $4 - 1; ++i)
			{
				// printf("\tpoly^\t", $4);
					if(debug) PrintPoly($$);
				// for (int i = 0; i < $$.polySize; ++i)
				// {
					// tempPoly = InitPolynom();
					// tempPoly = $1;
					tempPoly = InitPolynom();
					Multiply($$, $1, &tempPoly);
					$$ = tempPoly;
					// $$.coeffsArray[i] *= $1;
				// }
				// Multiply($1, $4, &$$);
				// $$ = doAction(&$1, (char*)'*', &$4);; 
			}


			if(debug)
			{
				printf("\tResult: ");
				PrintPoly($$);
				printf("\n\n");
			}

		}
		$$.PolynomLetter = $1.PolynomLetter;
	}
	| t_NUMBER
	{
		// printf("\t\tnum = %d\n", $1);
		$$ = InitPolynom();
		$$.coeffsArray[0] = $1;
		$$.degreesArray[0] = 0;
		$$.polySize++;
	}
	| t_LETTER
	{
		$$ = InitPolynom();
		$$.coeffsArray[0] = 1;
		$$.degreesArray[0] = 1;
		$$.PolynomLetter = $1;
		$$.polySize++;
	}
	| t_LETTER '^' digit
	{
		$$ = InitPolynom();
		$$.coeffsArray[0] = 1;
		$$.degreesArray[0] = $3;
		$$.PolynomLetter = $1;
		$$.polySize++;
	}

	| t_LETTER '^' t_Obracket digitBrace t_Cbracket
	{
		$$ = InitPolynom();
		$$.coeffsArray[0] = 1;
		$$.degreesArray[0] = $4;
		$$.PolynomLetter = $1;
		$$.polySize++;
	}
	| t_NUMBER t_LETTER
	{
		$$ = InitPolynom();
		$$.coeffsArray[0] = $1;
		$$.degreesArray[0] = 1;
		$$.PolynomLetter = $2;
		$$.polySize++;
	}
	| t_NUMBER t_LETTER '^' digit
	{
		$$ = InitPolynom();
		$$.coeffsArray[0] = $1;
		$$.degreesArray[0] = $4;
		$$.PolynomLetter = $2;
		$$.polySize++;
	}
	| t_NUMBER t_LETTER '^' t_Obracket digitBrace t_Cbracket
	{
		$$ = InitPolynom();
		$$.coeffsArray[0] = $1;
		$$.degreesArray[0] = $5;
		$$.PolynomLetter = $2;
		$$.polySize++;
	}
	|
	variable
	{
		$$ = InitPolynom();
		numVariableCurrent = FindVar($1);
		if(numVariableCurrent == -1)
		{
			printf("\tVar $%c was not initialized!\n", $1);
			ErrorGot("", -1);
		}
		CopyVarToPoly(&$$);
		// printf("\tCopied ");
		// PrintPoly($$);
	}



	// pseudo-rules for error in grammatic
	| polynom t_SignPlus t_SignPlus polynom
	{
		DoubleSignError('+', "Double '+' sign");
	}
	// | polynom t_SignPlus t_SignMinus polynom
	// {
	// 	DoubleSignError('+', "Combination of \"+-\" signs");
	// }
	| polynom t_SignPlus t_SignMulti polynom
	{
		DoubleSignError('+', "Combination of \"+*\" signs");
	}
	// | polynom t_SignMinus t_SignMinus polynom
	// {
	// 	DoubleSignError('-', "Double '-' sign");
	// }
	| polynom t_SignMinus t_SignPlus polynom
	{
		DoubleSignError('-', "Combination of \"-+\" signs");
	}
	| polynom t_SignMinus t_SignMulti polynom
	{
		DoubleSignError('-', "Combination of \"+-\" signs");
	}
	| polynom t_SignMulti t_SignMulti polynom
	{
		DoubleSignError('*', "Double '*' sign");
	}
	| polynom t_SignMulti t_SignPlus polynom
	{
		DoubleSignError('*', "Combination of \"*+\" signs");
	}
	// | polynom t_SignMulti t_SignMinus polynom
	// {
	// 	DoubleSignError('*', "Combination of \"*-\" signs");
	// }
	;


digitBrace:
	digit
	{
		// printf("\tdigitBrace ret %d %d\n", $1, $$);
		$$ = $1;
	}
	|
	t_SignMinus digit %prec UMINUS
	{
		$$ = -$2;
	}
	|
	digitBrace t_SignPlus digitBrace
	{
		// printf("\tdigitBrace t_SignPlus %d %d %d\n", $1, $3, $$);
		$$ = $1 + $3;
	}
	|
	digitBrace t_SignMinus digitBrace
	{
		// printf("\tdigitBrace t_SignMinus %d %d %d\n", $1, $3, $$);
		$$ = $1 - $3;
	}
	|
	digitBrace t_SignMulti digitBrace
	{
		// printf("\tdigitBrace t_SignMulti %d %d %d\n", $1, $3, $$);
		$$ = $1 * $3;
	}
	;


digit:
	t_NUMBER
	{
		$$ = $1;
	}
	//| t_SignMinus t_NUMBER %prec UMINUS
	//{
	//	$$ = -$1;
	//}
	| t_Obracket digit t_Cbracket
	{
		$$ = $2;
	}
	| digit '^' digit
	{
		if($3 < 0)
			ErrorGot("Negative degree!", -1);


		if(debug) printf("digit^digit %d^%d = ", $1, $3);

		if($3 == 0)
		{
			// WasZeroDegree = 1;
			if($1 == 0)
				ErrorGot("3 0^0 action", -1);
			else
				$$ = 1;
		}
		else
		{
			$$ = $1;
			for (int i = 0; i < $3 - 1; ++i)
			{
				// printf("digit^\n");
				$$ = $$ * $1; 
			}
		}
		if(debug) printf("%d\n", $$);
	}
	;


%% // конец секции с правилами, начало секции с функциями

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

void FillErrorStr(int c)
{
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
	return;
};



extern void yyerror(const char *s)
{
	printf("Error compilation:\n\"");
	char checkIfNewStr = 0;
	for (int i = 0; i < PosForError; ++i)
	{
		if(strForError[i] == '\n')
		{
			checkIfNewStr++;
			printf("\\n");
		}
		else
			printf("%c", strForError[i]);
	}

	if(posPointError == -1)
		posPointError = PosForError;
	else
	{
		posPointError++;
		checkIfNewStr = 0;
	}

	printf("\"\n");
	for (int i = 0; i < posPointError; ++i)
		printf(" ");

	for (int i = 0; i < checkIfNewStr; ++i)
	{
		printf("  ");
	}

	printf("^\nOn %d string", numStr);
	
	if(strForError[PosForError - 2] == '$' && (strForError[PosForError - 1] < 'a' || strForError[PosForError - 1] > 'z'))
		printf(": variable name is not specified\n");
	else
		printf("\n");

	isSuccess = 0;
    return;
};

extern int yylex()
{
	if(g_ALERT)
		return -1;

	int c;
	char printStr[7] = "print \0";
	int checkIfPrint[3] = {0, 1, 0};		// 0 - if was 'p', 1 - if allright

	c = fgetc(yyin);
	// printf("\'%c\' ", c);

	while(c == ' ')
	{
		c = fgetc(yyin);
		// printf("\'%c\' ", c);
	}

	FillErrorStr(c);

	if(isdigit(c))
	{
		yylval.num = c - '0';

		while(isdigit(c = fgetc(yyin)))
		{
			// printf("\'%c\' ", c);
			yylval.num = yylval.num*10;
			yylval.num += c - '0';
		}
		// printf("\tnum here = %d\n", yylval.num);
		if(!isdigit(c))
			ungetc(c, yyin);

		
		return t_NUMBER;
	}

	// if(c == 'x')
	// 	return t_LETTER;

	if(c >= 'a' && c <= 'z')
	{
		yylval.num = c;
		if(c == 'p')
		{
			checkIfPrint[0] = 1;
			for (int i = 1; i < 6; ++i)
			{
				c = fgetc(yyin);
				// printf("\'%c\' ", c);
				FillErrorStr(c);
				checkIfPrint[2]++;
				if(c != printStr[i])
				{
					checkIfPrint[2]++;
					// printf("Error: i = %d\n", i);
					checkIfPrint[1] = 0;
					break;
				}
			}
		}

		if(checkIfPrint[0] == 1 && checkIfPrint[1] == 1 && checkIfPrint[2] == 5)
		{
			return t_PRINT;
		}

		if(!checkIfPrint[1] && checkIfPrint[2] < 5)
		{
			printf("Name of \"print\" command is not full\n");
			yyerror(strForError);
			exit(-1);
		}

		if(!checkIfPrint[1])
		{
			printf("Incorrect use of function \"print\"\n");
			yyerror(strForError);
			exit(-1);
		}
		return t_LETTER;
	}

	

	if(c == '-')
		return t_SignMinus;

	if(c == '+')
		return t_SignPlus;

	if(c == '*')
		return t_SignMulti;

	if(c == '(')
		return t_Obracket;

	if(c == ')')
		return t_Cbracket;


	return c;
};

int main()
{
	WasZeroDegree = 0;
	yyin = fopen("input.txt", "r");
	yyparse();

	fclose(yyin);

	if(isSuccess)
		printf("\n\tParse was successful\n");

	return 0;
};