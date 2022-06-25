# Grammars-and-Compilers

Это репозиторий для проектов по Языковым грамматикам и Компиляторам. В качестве проектов в репозитории имеются:
1. Простой синтаксический и лексический анализатор полиномов от одной переменной. Выполняет упрощение предоставленного полинома
2. Улучшенный анализатор полиномов. Разные переменные (x, y, z и т.п.). Переменные, которым можно присваивать полиномы или другие переменные ($a = x^2 + 1). Подробное описание возникающих конфликтов и ошибок: лексических, синтаксических, семантических. Последний тип ошибки является областью некорректных с точки зрения математики операций (например, возедение нуля в нуль и т.д.)
3. Синтаксический и лесический анализатор языка Java (неполный). Анализу подлежит большая часть лексем языка Java и наиболее популярные конструкции. => Большая часть примеров кодов (не сложных объёмных проектов) будет проанализирована корректно. В некоторых случаях могут наблюдаться ошибки.


Перед запуском проекта на своём хосте, убедитесь, пожалуйста, что имеете следующую конфигурацию:
Win64;
make (gnuwin32) либо другой make на выбор;
Bison & Flex for Win (в моём случае: bison (GNU Bison) 2.7, flex.exe 2.6.4);
gcc (в моём случае gcc (MinGW.org GCC-6.3.0-1) 6.3.0)
  \
  \
  \
  \
  \
  \
  \
  \
  \
  \
  \
This is a repository for projects on Grammars and Compilers. As projects in the repository there are:
1. A simple syntactic and lexical analyzer of polynomials from one variable. Performs simplification of the provided polynomial
2. Improved polynomial analyzer. Different variables (x, y, z, etc.). Variables that can be assigned polynomials or other variables ($a = x^2+1). A detailed description of the conflicts and errors that arise: lexical, syntactic, semantic. The last type of error is the area of operations that are incorrect from the point of view of mathematics (for example, the conversion of zero to zero, etc.)
3. Syntactic and logical analyzer of the Java language (incomplete). Most of the Java lexemes and the most popular constructions are subject to analysis. => Most of the code examples (not complex large projects) will be analyzed correctly. In some cases, errors may be observed.


Before starting the project on your host, please make sure that you have the following configuration:
Win64;
make (gnuwin32) or another make to choose from;
Bison & Flex for Win (in my case: bison (GNU Bison) 2.7, flex.exe 2.6.4);
gcc (in my case gcc (MinGW.org GCC-6.3.0-1) 6.3.0)
\
\
\
\
\
\
\
\
\
\
\
\
