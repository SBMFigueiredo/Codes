Program FATORIAL ;

LABEL JUNINHO;

VAR 

A,B,C:INTEGER;

Begin
JUNINHO: 
 WRITE('ESCREVA O N�MERO PARA O CALCULO FATORIAL: ');
 READLN(A);
 C:=1;
  
 IF (A=0) OR (A=1) THEN 
  
	BEGIN
 	
 	WRITELN('O VALOR � 1')

	END
 
 ELSE
 	
	BEGIN
 
 		FOR B:=2 TO A DO
 	
		BEGIN
 
    C:=C*B;
 
 		END; 

		WRITELN('O VALOR �', C);

	END;

GOTO JUNINHO;

End.