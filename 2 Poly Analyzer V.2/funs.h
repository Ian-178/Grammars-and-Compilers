// #include <ctype.h>
#include <stdio.h>	
#include <stdlib.h>
#include <string.h>


#define alloca malloc
int yylex();
void yyerror(const char *s);
int yydebug = 1;


int isdigit(int);
FILE* yyin;
int isSuccess = 1;
int numStr = 1;
char strForError[9] = {0};
int PosForError = 0;

struct polynomStruct
{
	int polySize;
	int coeffsArray[64];
	int degreesArray[64];
	char PolynomLetter;
};

struct variableStruct
{
	int numInArray;
	char varName;
	struct polynomStruct polynom;

};
struct variableStruct variablesArray[64];
int sizeVarArray = 0;
int numVariableCurrent = 0;

struct polynomStruct InitPolynom(/*struct polynomStruct *ptrToPoly*/)
{
	struct polynomStruct tempPoly;
	tempPoly.PolynomLetter = 0;
	tempPoly.polySize = 0;
	tempPoly.PolynomLetter = 0;
	for (int i = 0; i < 64; ++i)
	{
		tempPoly.coeffsArray[i] = 0;
		tempPoly.degreesArray[i] = 0;
	}

	return tempPoly;
};


void PrintPoly(struct polynomStruct polyToPrint)
{
	// printf("%d = polySize  ", polyToPrint.polySize);

	if(polyToPrint.polySize == 0)
	{
		printf("0\n");
		return;
	}

	if(polyToPrint.polySize == 1 && polyToPrint.coeffsArray[0] == 0)
	{
		printf("0\n");
		return;
	}


	for (int i = 0; i < polyToPrint.polySize; ++i)
	{
		if(polyToPrint.coeffsArray[i] == 0)
			continue;
		if(polyToPrint.coeffsArray[i] >= 0 && i != 0)
			printf("+ ");
		// if(polyToPrint.coeffsArray[i] < 0 && i == 0)
		// 	printf("-");

		if(polyToPrint.degreesArray[i] == 0)
		{
			if(polyToPrint.coeffsArray[i] < 0)
				printf("- %d", -polyToPrint.coeffsArray[i]);
			else
				printf("%d", polyToPrint.coeffsArray[i]);
			// printf("%d", polyToPrint.coeffsArray[i]);
			continue;
		}

		// if(polyToPrint.coeffsArray[i] == -1)
		// 	printf("-");
		if(polyToPrint.coeffsArray[i] != 1 && polyToPrint.coeffsArray[i] != -1)
		{
			if(polyToPrint.coeffsArray[i] < 0)
				printf("- %d", -polyToPrint.coeffsArray[i]);
			else
				printf("%d", polyToPrint.coeffsArray[i]);
		}
		else
		{
			// if(i != 0)
				if(polyToPrint.coeffsArray[i] == -1)
					if(i == 0)
						printf("-");
					else
						printf("- ");
		}

		if(polyToPrint.degreesArray[i] != 0)
		{
			if(polyToPrint.degreesArray[i] != 1)
				printf("%c^%d ", polyToPrint.PolynomLetter, polyToPrint.degreesArray[i]);
			else
				printf("%c ", polyToPrint.PolynomLetter);
		}
	}

	printf("\n");
	return;
};


void SortPoly(struct polynomStruct* polyToSort)
{
	if(polyToSort->polySize == 1)
	{
		return;
	}
	int tempInt1 = 0, tempInt2 = 0;

	for (int i = 0; i < polyToSort->polySize; ++i)
	{
		for (int j = 0; j < polyToSort->polySize - 1; ++j)
		{
			if(polyToSort->degreesArray[j] < polyToSort->degreesArray[j + 1])
			{
				tempInt1 = polyToSort->degreesArray[j];
				tempInt2 = polyToSort->coeffsArray[j];

				polyToSort->degreesArray[j] = polyToSort->degreesArray[j + 1];
				polyToSort->coeffsArray[j] = polyToSort->coeffsArray[j + 1];

				polyToSort->degreesArray[j + 1] = tempInt1;
				polyToSort->coeffsArray[j + 1] = tempInt2;
			}
		}
	}
	return;
};


void shiftArrays(struct polynomStruct* poly1, int start)
{
	for (int i = start; i < poly1->polySize - 1; ++i)
	{
		poly1->coeffsArray[i] = poly1->coeffsArray[i + 1];
		poly1->degreesArray[i] = poly1->degreesArray[i + 1];
	}

	poly1->coeffsArray[poly1->polySize] = 0;
	poly1->degreesArray[poly1->polySize] = 0;
	poly1->polySize--;

	return;
};


void SumUP_Subtrac(struct polynomStruct poly1, struct polynomStruct poly2, struct polynomStruct* ResultPoly, char type)
{
	// struct polynomStruct tempExp = InitPolynom();
	char checkIfEqual = 0;
	// InitPolynom(ResultPoly);

	for (int i = 0; i < poly1.polySize; ++i)
	{
		ResultPoly->degreesArray[ResultPoly->polySize] = poly1.degreesArray[i];
		ResultPoly->coeffsArray[ResultPoly->polySize] = poly1.coeffsArray[i];
		ResultPoly->polySize++;
	}
	// printf("ResultPoly(%d) = ", ResultPoly->polySize);
	// PrintPoly(*ResultPoly);
	// printf("\tPoly2(%d) = ", poly2.polySize);
	// PrintPoly(poly2);
	// printf("\ttype = %c\n", type);
	
	for (int i = 0; i < poly2.polySize; ++i)
	{
		// $a = x^2 + 1
		// $b = x^3 - 1
		for (int j = 0; j < ResultPoly->polySize; ++j)
		{
			// printf("\t %d %d to %d %d\n", ResultPoly->coeffsArray[j], ResultPoly->degreesArray[j], poly2.coeffsArray[i], poly2.degreesArray[i]);
			if(ResultPoly->degreesArray[j] == poly2.degreesArray[i])
			{
				// printf("\t\tEqual %d %d %d %d\n", ResultPoly->coeffsArray[j], ResultPoly->degreesArray[j], poly2.coeffsArray[i], poly2.degreesArray[i]);
				checkIfEqual = 1;
				if(type == '+')
					ResultPoly->coeffsArray[j] += poly2.coeffsArray[i];
				else
					ResultPoly->coeffsArray[j] -= poly2.coeffsArray[i];

				// printf("\t\t%d ", ResultPoly->coeffsArray[j]);
				// PrintPoly(*ResultPoly);

				if(ResultPoly->coeffsArray[j] == 0)
				{
					// printf("\t\t\tShift\n");
					shiftArrays(ResultPoly, j);
				}
			}
		}

		if(checkIfEqual == 0)
		{
			// printf("\t  New %d %d\n", poly2.coeffsArray[i], poly2.degreesArray[i]);
			ResultPoly->degreesArray[ResultPoly->polySize] = poly2.degreesArray[i];
			if(type == '+')
				ResultPoly->coeffsArray[ResultPoly->polySize] = poly2.coeffsArray[i];
			else
				ResultPoly->coeffsArray[ResultPoly->polySize] -= poly2.coeffsArray[i];
			// printf("\t  New %d %d\t\t", ResultPoly->coeffsArray[ResultPoly->polySize], ResultPoly->degreesArray[ResultPoly->polySize]);
			ResultPoly->polySize++;
			// PrintPoly(*ResultPoly);
		}

		checkIfEqual = 0;
	}
	// printf("\tResultPoly = ");
	// PrintPoly(*ResultPoly);

	SortPoly(ResultPoly);
	// printf("\t1ResultPoly1 = ");
	// PrintPoly(*ResultPoly);

	return;
}
;

struct polynomStruct Multiply(struct polynomStruct poly1, struct polynomStruct poly2, struct polynomStruct *ResultPoly)
{
	int tempInt = 0;
	int tempBool = 0;

	for (int i = 0; i < poly2.polySize; ++i)
	{
		for (int j = 0; j < poly1.polySize; ++j)
		{
			tempBool = 0;
			tempInt = poly1.degreesArray[j] + poly2.degreesArray[i];
			for (int k = 0; k < ResultPoly->polySize; ++k)
			{
				if(tempInt == ResultPoly->degreesArray[k])
				{
					ResultPoly->coeffsArray[k] += poly1.coeffsArray[j]*poly2.coeffsArray[i];
					// printf("not new\n");
					tempBool = 1;
					continue;
				}
				if(tempBool == 1)
					break;
			}
			if(tempBool == 0)
			{
				ResultPoly->degreesArray[ResultPoly->polySize] = tempInt;
				ResultPoly->coeffsArray[ResultPoly->polySize] = poly1.coeffsArray[j]*poly2.coeffsArray[i];
				ResultPoly->polySize++;
			}
		}
	}

	SortPoly(ResultPoly);
	// printf("\t\tMulti after:\t");
	// PrintPoly(*ResultPoly);

	return poly1;
}
;

void ErrorGot(char* ErrorToPrint, char errVar)
{
	if(errVar == -1)
	{
		printf("Error while executing got on %d string: ", numStr);
		printf("%s\n", ErrorToPrint);
	}
	else
		printf("Unknown variable \'%c\' on %d string! You can use only \'x\' variable.\n", errVar, numStr);

	yyerror(strForError);

	exit(-1);
};

int g_ALERT = 0;

int FindVar(char varName)
{
	int varNum = -1;

	for (int i = 0; i < sizeVarArray; ++i)
	{
		if(varName == variablesArray[i].varName)
		{
			varNum = i;
			break;
		}
	}

	return varNum;
};


int varInit(char varName)
{
	char varWas = -1;

	varWas = FindVar(varName);
	if(varWas == -1)
	{
		varWas = sizeVarArray;
		sizeVarArray++;
	}

	variablesArray[varWas].varName = varName;
	variablesArray[varWas].numInArray = varWas;
	InitPolynom(&variablesArray[varWas].polynom);
	numVariableCurrent = varWas;
	
	return varWas;
};


void InitVarWithPoly(char varName, struct polynomStruct polyToCopy)
{
	int index = 0;
	index = varInit(varName);
	variablesArray[index].polynom = InitPolynom();
	variablesArray[index].polynom.PolynomLetter = polyToCopy.PolynomLetter;
	// polyToCopy->PolynomLetter = variablesArray[numVariableCurrent].polynom.PolynomLetter;
	for (int i = 0; i < polyToCopy.polySize; ++i)
	{
		variablesArray[index].polynom.coeffsArray[i] = polyToCopy.coeffsArray[i];
		variablesArray[index].polynom.degreesArray[i] = polyToCopy.degreesArray[i];
		variablesArray[index].polynom.polySize++;
	}
	

	return;
};

void PrintVar(char varName)
{
	printf("Var $%c = ", varName);
	int index = FindVar(varName);
	PrintPoly(variablesArray[index].polynom);

	return;
};

void CopyVarToPoly(struct polynomStruct *polyToCopy)
{
	polyToCopy->PolynomLetter = variablesArray[numVariableCurrent].polynom.PolynomLetter;
	for (int i = 0; i < variablesArray[numVariableCurrent].polynom.polySize; ++i)
	{
		polyToCopy->coeffsArray[i] = variablesArray[numVariableCurrent].polynom.coeffsArray[i];
		polyToCopy->degreesArray[i] = variablesArray[numVariableCurrent].polynom.degreesArray[i];
		polyToCopy->polySize++;
	}
	numVariableCurrent = -1;
	return;
};