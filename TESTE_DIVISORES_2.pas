Program TESTE_DIVISORES_2 ;

LABEL JUNINHO;

VAR

A,B,C:INTEGER;

Begin

JUNINHO:

WRITELN('ESCREVA O N�MERO PARA APURA��O: ');
READLN(A);

FOR B:=1 TO 10000 DO

BEGIN

C:=(A)MOD(B);

IF C=0 THEN
	
	BEGIN
	
	WRITELN(B);
	
	END;

END;  

GOTO JUNINHO;

End.