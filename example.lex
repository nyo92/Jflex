package br.com.compiler.scanner;
%%
%public
%class LexicalAnalyzerExample
%{
private void print_value(String lexema, String tipo) {
 System.out.println(lexema + " - " + tipo);
}
%}
%int
%line
%column

ABREPARENTESES = [\(]*
FECHAPARENTESES= [\)]*
PONT�NCIA = "**"
MULTIPLICACAO = "*"
DIVIS�O = "/"
SOMA = "+"
SUBTRACAO = "-"
INTEIROPOSITIVO = 0|[1-9][0-9]*
INTEIRONEGATIVO = \-\d*\d
BRANCO = [\n| |\t\r]

%%

{BRANCO}                        { System.out.println(yytext() + " - " + "ESPA�O EM BRANCO"); }
{ABREPARENTESES}                { print_value(yytext(), "ABRE PAR�NTESES"); }
{FECHAPARENTESES}               { print_value(yytext(), "FECHA PAR�NTESES"); }
{PONT�NCIA}                     { print_value(yytext(), "PONT�NCIA"); }
{MULTIPLICACAO}                 { print_value(yytext(), "MULTIPLICA��O"); }
{DIVIS�O}                       { print_value(yytext(), "DIVIS�O"); }
{SOMA}                          { print_value(yytext(), "ADI��O"); }
{SUBTRACAO}                     { print_value(yytext(), "SUBTRA��O"); }
{INTEIROPOSITIVO}               { print_value(yytext(), "N�MERO POSITIVO"); }
{INTEIRONEGATIVO}               { print_value(yytext(), "N�MERO NEGATIVO"); }
. { throw new RuntimeException("Caractere inv�lidos " + yytext()); }