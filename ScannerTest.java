package br.com.compiler.scanner;

import java.io.IOException;
import java.io.StringReader;



public class ScannerTest {
	
	public static void main(String[] args) throws IOException {

        
        String expr1 = "+1*2";
        LexicalAnalyzerExample lexical1 = new LexicalAnalyzerExample(new StringReader(expr1));
        lexical1.yylex();
       

		
        String expr2 = "+5**2-(4)";
        LexicalAnalyzerExample lexical2= new LexicalAnalyzerExample(new StringReader(expr2));
        lexical2.yylex();
       
        
		
        String expr3 = "-5--7";
        LexicalAnalyzerExample lexical3 = new LexicalAnalyzerExample(new StringReader(expr3));
        lexical3.yylex();
        
        
		
        String expr4 = "-(8+12)**1*3/-4";
        LexicalAnalyzerExample lexical4 = new LexicalAnalyzerExample(new StringReader(expr4));
        lexical4.yylex();
         
		
        String expr5 = "1+2/b";
        LexicalAnalyzerExample lexical5 = new LexicalAnalyzerExample(new StringReader(expr5));
        lexical5.yylex();
        
        
        String expr6 = "a2+(3-5)";
        LexicalAnalyzerExample lexical6 = new LexicalAnalyzerExample(new StringReader(expr6));
        lexical6.yylex();
        
        
        
        
    }
}