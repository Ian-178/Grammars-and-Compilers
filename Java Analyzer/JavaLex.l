%{
    #include <stdio.h>
    #include "JavaYacc.tab.h"
    extern int lastStr;
    extern int lastStr2;
    extern int numStr;
    extern char charForError[32];

    extern void yyerror( char* );

    void readComment( _Bool multiline );


%}

%%

"/*"                                                readComment( 1 );
"//"                                                readComment( 0 );




"package"                                           {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_Package;
                                                    }
"import"                                            {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_Import;
                                                    }



"class"                                             {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_Class;
                                                    }
"interface"                                         {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_Interface;
                                                    }


"byte"|"boolean"|"char"|"double"                    {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_DataType;
                                                    }
"float"|"int"|"long"|"short"                        {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_DataType;
                                                    }
"String"                                            {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_StringType;
                                                    }
"var"                                               {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_DataTypeVariable;
                                                    }
"void"                                              {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_DataTypeMethod;
                                                    }

"enum"                                              {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_Enum;
                                                    }

"public"                                            {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_PublicModifiers;
                                                    }
"private"                                           {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_PrivateModifiers;
                                                    }
"protected"                                         {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_ProtectedModifiers;
                                                    }

"static"                                            {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_StaticModifiers;
                                                    }
"final"                                             {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_FinalModifiers;
                                                    }
"abstract"                                          {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_AbstractModifiers;
                                                    }
"transient"                                         {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_TRransientModifiers;
                                                    }
"native"                                            {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_NativeModifiers;
                                                    }
"strictfp"                                          {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_StrictfpModifiers;
                                                    }
"synchronized"|"volatile"                           {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_StreamModifiers;
                                                    }

"extends"                                           {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_Extends;
                                                    }
"implements"                                        {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_Implements;
                                                    }

"throw"                                             {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_Throw;
                                                    }


"true"|"false"                                      {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_TrueFalse;
                                                    }

"if"                                                {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_If;
                                                    }
"else"                                              {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_Else;
                                                    }

"switch"                                            {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_Switch;
                                                    }
"case"                                              {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_Case;
                                                    }
"default"                                           {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_Default;
                                                    }

"try"                                               {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_Try;
                                                    }
"catch"                                             {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_Catch;
                                                    }
"throws"                                            {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_Throws;
                                                    }
"finally"                                           {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_Finally;
                                                    }

"for"                                               {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_For;
                                                    }
"do"                                                {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_Do;
                                                    }
"while"                                             {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_While;
                                                    }

"break"                                             {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_Break;
                                                    }
"continue"                                          {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_Continue;
                                                    }

"new"                                               {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_New;
                                                    }
"super"                                             {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_Super;
                                                    }
"this"                                              {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_This;
                                                    }

"assert"                                            {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_Assert;
                                                    }
"instanceof"                                        {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_Instanceof;
                                                    }
"return"                                            {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_Return;
                                                    }
"NULL"                                              {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_NULL;
                                                    }



"@"                                                 {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_Dog;
                                                    }

"++"|"--"                                           {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_SignIncDec;
                                                    }

"~"                                                 {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_Tilde;
                                                    }
"!"                                                 {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_Exclamation;
                                                    }

"-"                                                 {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_SignMinus;
                                                    }
"+"                                                 {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_SignPlus;
                                                    }

"=="                                                {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_SignEqual;
                                                    }
                                                    
"!="                                                {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_SignNotEqual;
                                                    }
                                                    
">="                                                {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_SignGreatEqual;
                                                    }
                                                    
"<="                                                {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_SignLessEqual;
                                                    }
                                                    

">"                                                 {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("t_CloseAngleBracket\n", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_CloseAngleBracket;
                                                    }
"<"                                                 {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("t_OpenAngleBracket\n", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_OpenAngleBracket;
                                                    }


"&&"                                                {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_DoubleAnd;
                                                    }

"||"                                                {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_DoubleOr;
                                                    }
"&"                                                 {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_SingleAnd;
                                                    }

"|"                                                 {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_SingleOr;
                                                    }

"^"                                                 {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_SignPower;
                                                    }

"%"                                                 {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_SignPercent;
                                                    }
"/"                                                 {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_SignDivide;
                                                    }

"*"                                                 {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("t_Star\n", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_Star;
                                                    }
"="                                                 {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("t_Assignment\n", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_Assignment;
                                                    }
"<<"                                                {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_DoubleOpenAngBrckt;
                                                    }
">>"                                                {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_DoubleCloseAngBrckt;
                                                    }

"+="|"-="|"*="|"/="|"%="|"&="|"|="|">>="|"<<="|"^=" {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_Assignment2;
                                                    }

"("                                                 {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("  %s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_OpenBracket;
                                                    }
")"                                                 {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("  %s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_CloseBracket;
                                                    }
"["                                                 {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("  %s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_OpenSquareBracket;
                                                    }
"]"                                                 {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("  %s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_CloseSquareBracket;
                                                    }
"{"                                                 {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("  %s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_OpenBrace;
                                                    }
"}"                                                 {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("  %s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_CloseBrace;
                                                    }

";"                                                 {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("\t\t\t\t\t;\n");
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_Semicolon;
                                                    }
"."                                                 {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_Dot;
                                                    }
","                                                 {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_Comma;
                                                    }
"?"                                                 {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_Query;
                                                    }
":"                                                 {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_Colon;
                                                    }


\"([^"]|\\.)*\"                                     {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("string is \t\"%s\"\n", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_String;
                                                    }

\'                                                  {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("string is \t\"%s\"\n", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_SingleQuote;
                                                    }

\'[_a-zA-Z0-9]\'                                    {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("string is \t\"%s\"\n", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_CharSymbol;
                                                    }




[0-9]+                                              {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_Number;
                                                    }
[0-9]+"."[0-9]+"f"                                  {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_Float;
                                                    }
[0-9]+"."[0-9]+                                     {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("%s\t", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_Float;
                                                    }
[_a-zA-Z][_a-zA-Z0-9]*                              {
                                                        if(lastStr == 0) lastStr = numStr;
                                                        else
                                                        {
                                                            lastStr2 = lastStr;
                                                            lastStr = numStr;
                                                        }
                                                        // printf("\nt_Identifer = \"%s\"\n", yytext);
                                                        memset(charForError, '\0', 32);
                                                        strcpy(charForError, yytext);
                                                        return t_Identifer;
                                                    }
\n                                                  {
                                                        numStr++;
                                                        // lastStr2 = numStr;
                                                        // printf("\n");
                                                        // printf("\t  \\n = %d\n", numStr);
                                                    }
[ \t]+                                              ;
%%

void readComment( _Bool multiline )
{
    if ( multiline )
    {
        int c;
        while ( ( c = input() ) != 0 )
        {
            if ( c == '\n' )
            {
                ++yylval;
                numStr++;
                // lastStr2 = numStr;
            }

            if ( c == '*' )
            {
                while ( ( c = input() ) == '*' ) ;

                if ( c == '/' )
                {
                    return;
                }
                else if ( c == '\n' )
                {
                    numStr++;
                    // lastStr2 = numStr;
                    ++yylval;
                }
                else if ( c == 0 )
                {
                    break;
                }
            }
        }

        yyerror( "Unterminated comment\n" );
    }
    else
    {
        int cur, prev = 0;
        while ( ( cur = input() ) != 0 )
        {
            if ( cur == '\n' )
            {
                numStr++;
                // lastStr2 = numStr;
                ++yylval;
            }

            if ( cur == '\n' && prev != '\\' )
            {
                // numStr++;
                // lastStr2 = numStr;
                return;
            }
            prev = cur;
        }

        yyerror( "Unterminated comment\n" );
    }
}
