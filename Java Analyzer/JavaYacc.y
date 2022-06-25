// Неодназначное распознавание просто ид через точку и типа данных через точку

%{
    //#include "funs.h"
    #include <locale.h>
    #include <stdio.h>
    #include <stdlib.h>
    #include <string.h>
    int isSuccess = 1;
    int numStr = 1;


    int wasNoEnter = 0;
    int lastStr = 0;

    char charForError[32] = {0};
    int lastStr2 = 0;

    extern int yylex();

    FILE* yyin;
    extern int yylval;
    int yydebug = 1;

    //void yyerror(const char *str){
    //    f(stderr,"error: %s\n", str);
    //    fprintf(stderr,"str: %d\n", number_str);
    //}


    void yyerror(const char *str)
    {
        printf("Error compilation\n");

        printf("On %d string. Probably error is \"%s\"", numStr, charForError);

        isSuccess = 0;
        return;
    };


    int yywrap()
    {
        // if(isSuccess)
        //  printf("\n\tParse was successful\n");
        return 1;
    };
%}
// %error-verbose
    %token t_PublicModifiers
    %token t_PrivateModifiers
    %token t_ProtectedModifiers
    
    %token t_DoubleOpenAngBrckt
    %token t_DoubleCloseAngBrckt

    %token t_DoubleAnd
    %token t_DoubleOr
    %token t_SingleAnd
    %token t_SingleOr
    %token t_SignPower
    %token t_SignPercent
    %token t_SignDivide

    %token t_Tilde
    %token t_Exclamation

    %token t_SignEqual
    %token t_SignNotEqual
    %token t_SignGreatEqual
    %token t_SignLessEqual

    %token t_OpenBracket
    %token t_CloseBracket
    %token t_OpenSquareBracket
    %token t_CloseSquareBracket
    %token t_OpenBrace
    %token t_CloseBrace
    %token t_SignComparasion
    %token t_CloseAngleBracket
    %token t_OpenAngleBracket
    %token t_Star
    %token t_Assignment
    %token t_Assignment2
    %token t_SignMinus
    %token t_SignPlus
    %token t_Semicolon
    %token t_Dot
    %token t_Comma
    %token t_Query
    %token t_Colon
    %token t_UnarySign
    %token t_Dog
    %token t_Package
    %token t_Import
    %token t_Class
    %token t_Interface

    %token t_StringType
    %token t_DataType
    %token t_DataTypeVariable
    %token t_DataTypeMethod
    %token t_Enum
    %token t_NULL

    %token t_StaticModifiers
    %token t_FinalModifiers
    %token t_AbstractModifiers
    %token t_TRransientModifiers
    %token t_NativeModifiers
    %token t_StrictfpModifiers
    %token t_StreamModifiers
    %token t_Extends
    %token t_Implements
    %token t_Throw
    %token t_TrueFalse
    %token t_If
    %token t_Else
    %token t_Switch
    %token t_Case
    %token t_Default
    %token t_Try
    %token t_Catch
    %token t_Throws
    %token t_Finally
    %token t_For
    %token t_Do
    %token t_While
    %token t_Break
    %token t_Continue
    %token t_New
    %token t_Super
    %token t_This
    %token t_Assert
    %token t_Instanceof
    %token t_Return
    %token t_SignIncDec
    %token t_String
    %token t_Number
    %token t_Float
    %token t_Identifer
    %token t_SingleQuote
    %token t_CharSymbol


    %right t_Assignment

    %left t_DoubleOr
    %left t_DoubleAnd
    %left t_SingleOr
    
    %left t_SignDivide
    %left t_SignPercent
    %left t_SignPower
    
    %left t_CloseAngleBracket
    %left t_DoubleOpenAngBrckt
    %left t_DoubleCloseAngBrckt

    %left t_OpenBrace
    %left t_OpenSquareBracket
    %left t_SingleAnd
    %left t_SignPlus t_SignMinus
    %left t_Star
    %left t_Dot
    %left t_Exclamation
    %nonassoc t_OpenAngleBracket
%%

main:
    PackageBlock ImportBlock ClassBlock
    ;

ClassBlock:
    |
    ClassBlock ClassDeclaration
    ;


ClassDeclaration:
    Modifiers t_Class t_Identifer Extends Implements Type ClassBody
    ;

Extends:
    |
    t_Extends t_Identifer
    ;

R_AccessModifiers:
    |
    t_PublicModifiers
    |
    t_PrivateModifiers
    |
    t_ProtectedModifiers
    ;

R_StaticModifiers:
    |
    t_StaticModifiers;

R_FinalModifiers:
    |
    t_FinalModifiers;

R_StreamModifiers:
    |
    t_StreamModifiers;

Modifiers:
    R_AccessModifiers R_Native R_Abstract R_StaticModifiers R_StreamModifiers R_FinalModifiers
    ;

R_Native:
    |
    t_NativeModifiers
    ;

R_Abstract:
    |
    t_AbstractModifiers
    ;

Type:
    |
    // t_Identifer
    t_OpenAngleBracket TypeList t_CloseAngleBracket
    ;

TypeList:
    TypeParameter TypeParamContinue
    ;

TypeParamContinue:
    |
    t_Comma TypeParameter TypeParamContinue
    ;

TypeParameter:
    t_Identifer
    |
    t_StringType
    ;

//CharSymbol:
//    t_SingleQuote 

PackageBlock:
    |
    PackageBlock packageElement t_Semicolon
    ;

ImportBlock:
    |
    ImportBlock importElement t_Semicolon
    ;

packageElement:
    t_Package NameDotDivided
    ;


NameDotDivided:
    t_Identifer
    |
    NameDotDivided t_Dot t_Identifer
    ;

importElement:
    t_Import t_Identifer NamePacket t_Dot t_Star
    |
    t_Import t_Identifer NamePacket
    ;

NamePacket:
    |
    NamePacket t_Dot t_Identifer
    ;



// Extends:
//     |
//     t_Extends t_Identifer
//     ;

Implements:
    |
    t_Implements t_Identifer CommaNextImplement
    ;

CommaNextImplement:
    |
    t_Comma t_Identifer CommaNextImplement
    ;

ClassBody:
    t_OpenBrace ClassBody2 t_CloseBrace
    ;

ClassBody2:
    |
    ClassMemberDeclatation ClassBody2
    //|
    //constructorDeclaration ClassBody2
    // |
    // instanceInitializer
    // |
    // StaticInitializer ClassBody2
    ;

// StaticInitializer:
//     t_StaticModifiers Commands
//     ;

ClassMemberDeclatation:
    Modifiers VarOrMethod
    |
    // t_FinalModifiers r_DataType t_Identifer VariableAssignment NexVarDeclaration t_Semicolon
    // |
    ClassDeclaration
    |
    // interfaceDeclaration
    // |
    t_Semicolon
    ;


r_DataTypeHere:
    t_StringType RepeatSquareBracket
    |
    t_DataType RepeatSquareBracket
    |
    t_Identifer RepeatSquareBracket
    ;

VarOrMethod:
    methodDeclarator BodyMethod
    |
    t_DataTypeMethod methodDeclarator BodyMethod
    |
    r_DataTypeHere t_Identifer t_OpenBracket formalParametersList t_CloseBracket Throws BodyMethod
    |
    r_DataTypeHere t_OpenAngleBracket TypeList t_CloseAngleBracket t_Identifer VariableAssignment NexVarDeclaration t_Semicolon
    |
    r_DataTypeHere t_Identifer VariableAssignment NexVarDeclaration t_Semicolon
    |
    r_DataTypeHere t_OpenSquareBracket Expression t_CloseSquareBracket RepeatSquareBracket t_Identifer VariableAssignment NexVarDeclaration t_Semicolon
    |
    r_DataTypeHere t_OpenSquareBracket t_CloseSquareBracket RepeatSquareBracket t_Identifer VariableAssignment NexVarDeclaration t_Semicolon
    ;

// MethodOrVar:
//     t_OpenBracket formalParametersList t_CloseBracket BodyMethod
    // |
    // VariableAssignment NexVarDeclaration t_Semicolon
    // |
    // t_Semicolon

    // |
    // ReturnTypeMethod t_Identifer 
    ;



// MethodDeclaration:
//     Modifiers methodHeader BodyMethod
//     ;

// methodHeader:
//     ReturnTypeMethod methodDeclarator /*throws_?*/
//     // |
//     // Type annotation*  ReturnTypeMethod methodDeclarator /*throws_?*/
//     ;

Throws:
    |
    t_Throws ThrowsList
    ;

ThrowsList:
    t_Identifer ThrowsListContinue
    ;

ThrowsListContinue:
    |
    t_Comma t_Identifer ThrowsListContinue
    ;


methodDeclarator:
    t_Identifer t_OpenBracket formalParametersList t_CloseBracket Throws/*dims?*/
    ;


formalParametersList:
    |
    formalParameter FormalParamContinue
    // |
    // receiverParameter FormalParamContinue
    ;

FormalParamContinue:
    |
    t_Comma formalParameter FormalParamContinue
    ;

formalParameter:
    VariableModifier r_DataTypeHere Type RepeatSquareBracket VarDeclrId
    // |
    // VariableModifier TypesDotDivided RepeatSquareBracket VarDeclrId
    ;

RepeatSquareBracket:
    |
    t_OpenSquareBracket Expression t_CloseSquareBracket RepeatSquareBracket
    |
    t_OpenSquareBracket t_CloseSquareBracket RepeatSquareBracket
    ;


ArrayInitializer:
    t_OpenBrace VariableInitializerList t_CloseBrace
    ;

VariableInitializerList:
    |
    VariableInitializer VarInitListContinue
    ;

VarInitListContinue:
    |
    t_Comma VariableInitializer VarInitListContinue
    ;

AllAssignmetSigns:
    t_Assignment
    |
    t_Assignment2
    ;


//constructorDeclaration:
//    t_PublicModifiers t_Identifer t_OpenBracket formalParametersList t_CloseBracket constructorBody
//    ;

//constructorBody:
//    t_OpenBrace /*explicitConstructorInvocation*/ Commands t_CloseBrace
//    ;



VarDeclrId:
    t_Identifer RepeatSquareBracket
    ;


VariableModifier:
    |
    t_FinalModifiers
    ;


BodyMethod:
    CommandsBlockBraces
    |
    t_Semicolon
    ;

CommandsBlockBraces:
    t_OpenBrace Commands t_CloseBrace
    ;

Commands:
    |
    Command Commands
    ;

Command:
    /*R_FinalModifiers */VariablesDeclarationString t_Semicolon
    // |
    // VariableDeclaratorList t_Semicolon
    |
    ClassDeclaration
    |
    Statement
    ;

VariablesDeclarationString:
    t_DataType RepeatSquareBracket Type VariableDeclaratorList
    |
    TypesDotDivided RepeatSquareBracket Type VariableDeclaratorList
    ;
VariableDeclaratorList:
    VariableDeclaration NexVarDeclaration
    ;
NexVarDeclaration:
    |
    t_Comma VariableDeclaration NexVarDeclaration
    ;
VariableDeclaration:
    VarDeclrId VariableAssignment
    ;
VariableAssignment:
    |
    AllAssignmetSigns VariableInitializer
    // |
    // AllAssignmetSigns NoBoolExpression
    ;
VariableInitializer:
    //ExpressionNotCompEqual AllAssignmetSigns ExpressionNotCompEqual
    //|
    //ExpressionNotCompEqual RT_SignComparasion ExpressionNotCompEqual
    //|
    //ExpressionNotCompEqual
    //|
    ExpressionNotCompEqual t_Query ExpressionNotCompEqual t_Colon ExpressionNotCompEqual
    |
    ExpressionNotCompEqual
    |
    ArrayInitializer
    ;

Statement:
    SingleStatement
    |
    // labeledStatement
    // |
    If
    |
    IfElse
    |
    While
    |
    For
    ;

While:
    t_While t_OpenBracket Expression t_CloseBracket Statement
    ;

whileStatementNoShort:
    t_While t_OpenBracket Expression t_CloseBracket statementNoShort
    ;



statementNoShort:
    SingleStatement
    // |
    // labeledStatementNoShortIf
    |
    ifThenElseStatementNoShort
    |
    whileStatementNoShort
    // |
    // forStatementNoShortIf
    ;

SingleStatement:
    CommandsBlockBraces
    |
    t_Semicolon
    |
    Expression t_Semicolon
    //ExpressionNotCompEqual AllAssignmetSigns ExpressionNotCompEqual t_Semicolon
    //|
    //ExpressionNotCompEqual RT_SignComparasion ExpressionNotCompEqual t_Semicolon
    //|
    //ExpressionNotCompEqual AllAssignmetSigns ExpressionNotCompEqual t_Query ExpressionNotCompEqual t_Colon ExpressionNotCompEqual t_Semicolon
    //|
    //methodInvocation t_Semicolon
    //|
    //NoBoolExpression t_Semicolon
    //|
    //t_SignIncDec ExprForIncDec t_Semicolon
    //|
    //ExprForIncDec t_SignIncDec t_Semicolon
    |
    t_Super t_ThisContinue t_Semicolon
    |
    Assert
    // |
    // NoBoolExpression
    |
    Switch
    |
    Do
    |
    Break
    |
    Continue
    |
    Return
    // |
    // Synchronized
    |
    Throw
    |
    Try
    ;


Throw:
    t_Throw Expression t_Semicolon
    ;

Do:
    t_Do Statement t_While t_OpenBracket Expression t_CloseBracket t_Semicolon
    ;

Try:
    t_Try CommandsBlockBraces Catches
    |   t_Try CommandsBlockBraces Catches Finally
    // |   tryWithResourcesStatement
    ;

Catches:
    |
    catchClause Catches
    ;

catchClause:
    t_Catch t_OpenBracket catchFormalParameter t_CloseBracket CommandsBlockBraces
    ;

catchFormalParameter:
    VariableModifier r_DataType VarDeclrId
    ;

Finally:
    t_Finally CommandsBlockBraces
    ;
// ExpressionStatement:
//     Expression ';'
//     ;

NoBoolExpression:
    t_New TypesDotDivided t_OpenBracket argumentList t_CloseBracket
    |
    t_New TypesDotDivided t_OpenAngleBracket TypeList t_CloseAngleBracket t_OpenBracket argumentList t_CloseBracket
    //|
    //t_New TypesDotDivided RepeatSquareBracket RepeatBrace
    |
    t_New TypesDotDivided t_OpenSquareBracket Expression t_CloseSquareBracket RepeatSquareBracket RepeatBrace
    |
    t_New TypesDotDivided t_OpenSquareBracket t_CloseSquareBracket RepeatSquareBracket RepeatBrace
    |
    t_New t_DataType t_OpenBracket argumentList t_CloseBracket
    |
    t_New t_DataType t_OpenAngleBracket TypeList t_CloseAngleBracket t_OpenBracket argumentList t_CloseBracket
    |
    //t_New t_DataType RepeatSquareBracket RepeatBrace

    t_New t_DataType t_OpenSquareBracket Expression t_CloseSquareBracket RepeatSquareBracket RepeatBrace
    |
    t_New t_DataType t_OpenSquareBracket t_CloseSquareBracket RepeatSquareBracket RepeatBrace
    ;


RepeatBrace:
    |
    t_OpenBrace ArrayInit t_CloseBrace RepeatBrace
    |
    t_OpenBrace RepeatBrace t_CloseBrace RepeatBrace
    ;

ArrayInit:
    RepeatBrace ArrayInitContinue
    |
    t_Number ArrayInitContinue
    |
    t_Float ArrayInitContinue
    ;
ArrayInitContinue:
    |
    t_Comma t_Number ArrayInitContinue
    |
    t_Comma t_Float ArrayInitContinue
    |
    t_Comma RepeatBrace ArrayInitContinue
    ;

If:
    t_If t_OpenBracket Expression t_CloseBracket Statement
    ;

IfElse:
    t_If t_OpenBracket Expression t_CloseBracket statementNoShort t_Else Statement
    ;

ifThenElseStatementNoShort:
    t_If t_OpenBracket Expression t_CloseBracket statementNoShort t_Else statementNoShort
    ;


Switch:
    t_Switch t_OpenBracket Expression t_CloseBracket switchBlock
    ;

switchBlock:
    t_OpenBrace switchBlockStatementGroup /*SwitchCondKey_0*/ t_CloseBrace
    ;

switchBlockStatementGroup:
    |
    SwitchCondKey_1 Commands switchBlockStatementGroup
    ;

//SwitchCondKey_0:
//    |
//    SwitchCondKey SwitchCondKey_0
//    ;

SwitchCondKey_1:
    SwitchCondKey// SwitchCondKeyContinue
    ;

//SwitchCondKeyContinue:
//    |
//    SwitchCondKey SwitchCondKeyContinue
//    ;

SwitchCondKey:
    t_Case Expression t_Colon
    |   t_Case t_Identifer t_Colon
    |   t_Default t_Colon
    ;

Assert:
    t_Assert Expression t_Semicolon
    |
    t_Assert Expression t_Colon Expression t_Semicolon
    ;

For:
    basicForStatement
    // |
    // enhancedForStatement
    ;

basicForStatement:
    t_For t_OpenBracket forInit t_Semicolon ForExpression2 t_Semicolon ForUpdate t_CloseBracket Statement
    ;

ForExpression2:
    |
    Expression
    ;

forInit:
    |
    statementExpressionList
    |
    VariablesDeclarationString
    ;

ForUpdate:
    |
    statementExpressionList
    ;

statementExpressionList:
    Expression stateExprContinue
    ;

stateExprContinue:
    |
    t_Comma Expression stateExprContinue
    ;


arrayAccess:
    TypesDotDivided RepeatSquareBracket
    //|
    //t_Identifer
    //|
    //???t_DataType RepeatSquareBracket
    ;


BinarySigns:
    t_DoubleOr
    |   t_DoubleAnd
    |   t_SingleOr
    |   t_SingleAnd
    |   t_SignPlus
    |   t_SignMinus
    |   t_Star
    |   t_SignDivide
    |   t_SignPercent
    |   t_SignPower
    |   t_DoubleOpenAngBrckt
    |   t_DoubleCloseAngBrckt
//    ;

//RT_SignComparasion:
    |    t_SignEqual
    |   t_SignNotEqual
    |   t_SignGreatEqual
    |   t_SignLessEqual
    |   t_OpenAngleBracket
    |   t_CloseAngleBracket
    ;


Expression:
    t_OpenBracket Expression t_CloseBracket
    |
    t_OpenBracket Expression t_CloseBracket BinarySigns ExpressionNotCompEqual
    |
    ExpressionNotCompEqual AllAssignmetSigns ExpressionNotCompEqual
    //|
    //ExpressionNotCompEqual RT_SignComparasion ExpressionNotCompEqual
    //|
    //Expression BinarySigns Expression
    |
    ExpressionNotCompEqual
    |
    Expression t_Query Expression t_Colon Expression
    ;
//result = ((x != 1) && (x == 2));

TypeConverse:
    t_OpenBracket t_DataType t_CloseBracket
    |
    t_OpenBracket TypesDotDivided t_CloseBracket
    //t_OpenBracket t_DataType t_Dot TypesDotDivided t_CloseBracket
    //|
    //t_OpenBracket t_Identifer t_Dot TypesDotDivided t_CloseBracket
    ;


ExpressionNotCompEqual:
    unaryExpression
    |
    t_OpenBracket ExpressionNotCompEqual t_CloseBracket
    //|
    //ExpressionNotCompEqual RT_SignComparasion ExpressionNotCompEqual
    //|
    //t_OpenBracket TypesDotDivided t_CloseBracket
    |
    TypeConverse ExpressionNotCompEqual
    //|
    //t_OpenBracket TypesDotDivided t_CloseBracket BinarySigns ExpressionNotCompEqual
    |
    ExpressionNotCompEqual BinarySigns ExpressionNotCompEqual
    //|
    //ExpressionNotCompEqual t_Query Expression t_Colon ExpressionNotCompEqual
    ;


unaryExpression:
    NoBoolExpression
    |
    t_Super t_ThisContinue
    |
    t_CharSymbol
    |
    t_TrueFalse
    |
    t_Exclamation t_TrueFalse
    |
    t_Exclamation t_Identifer
    |
    t_Exclamation methodInvocation
    |
    t_Exclamation t_OpenBracket t_SignIncDec t_Identifer t_CloseBracket
    |
    t_Float
    |
    t_String
    |
    methodInvocation
    |
    ExpressionWithUnaryOp
    |
    t_NULL
    //|
    //TypeConverse unaryExpression
    ;


t_ThisContinue:
    |
    t_Dot t_Identifer t_ThisContinue
    |
    t_Dot methodInvocation t_ThisContinue
    ;

ExpressionWithUnaryOp:
    ExprForIncDec
    |
    t_Tilde ExprForIncDec
    |
    t_SignIncDec ExprForIncDec
    |
    t_SignPlus ExprForIncDecUnary
    |
    t_SignMinus ExprForIncDecUnary
    |
    ExprForIncDec t_SignIncDec
    ;

ExprForIncDecUnary:
    ExprForIncDec
    |
    t_Float
    ;

ExprForIncDec:
    // t_Identifer
    // |
    arrayAccess
    //|
    //arrayAccess t_Dot t_This
    |
    //arrayAccess
    //|
    t_Number
    ;


methodInvocation:
    // t_This t_Dot TypesDotDivided t_OpenBracket argumentList t_CloseBracket
    // |
    TypesDotDivided t_OpenBracket argumentList t_CloseBracket methodInvocationCont
    //t_Identifer t_Dot TypesDotDivided t_OpenBracket argumentList t_CloseBracket methodInvocationCont
    //|
    //t_DataType t_Dot TypesDotDivided t_OpenBracket argumentList t_CloseBracket methodInvocationCont
    //|
    //t_StringType t_Dot TypesDotDivided t_OpenBracket argumentList t_CloseBracket methodInvocationCont
    ;

methodInvocationCont:
    |
    t_Dot TypesDotDivided t_OpenBracket argumentList t_CloseBracket methodInvocationCont
    ;

r_DataType:
    t_StringType
    //|
    //t_DataType
    |
    t_Identifer
    ;

//TypesDotDividedMethod:
//    r_DataType t_Dot TypesDotDivided
//    |
//    t_Identifer t_OpenBracket argumentList t_CloseBracket t_Dot
//    |
//    t_Identifer t_Dot TypesDotDividedMethod
//    |
//    r_DataType
//    |
//    ;


TypesDotDivided:
    r_DataType t_Dot TypesDotDivided
    |
    t_This t_Dot TypesDotDivided
    |
    t_This
    |
    r_DataType
    ;

argumentList:
    //|
    //t_This
    |
    Expression ExpressionContinue;


ExpressionContinue:
    |
    t_Comma Expression ExpressionContinue;


Break:
    t_Break /*t_Identifer*/ t_Semicolon
    ;

Continue:
   t_Continue /*t_Identifer*/ t_Semicolon
    ;

Return:
    t_Return ReturnExpression t_Semicolon
    |
    t_Return t_OpenBracket t_Identifer t_CloseBracket t_Semicolon
    ;

ReturnExpression:
    |
    Expression
    //|
    //t_OpenBracket Expression t_CloseBracket
    ;


// Expression:
    // t_String
    // |
    // Expression
    // ;

//AssignExpr:
//    ExpressionWithSigns
//    |
//    Assignment
//    ;




%% // конец секции с правилами, начало секции с функциями


int main(int argc, char const *argv[])
{
    setlocale(LC_ALL,"Russian");
    // printf("%s\n", argv[1]);
    
    yyin = fopen(argv[1], "r");
    if(yyin == NULL)
    {
        printf("Incorrect file!\n");
        return 0;
    }
    // int a ==! 0;
    yyparse();

    fclose(yyin);

    if(isSuccess)
        printf("\n\tParse was successful\n");

    return 0;
}