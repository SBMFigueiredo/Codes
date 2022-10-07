PROGRAM COMPARADOR;

VAR

X: ARRAY[1..40] OF INTEGER;
A,B,C,L: INTEGER;

BEGIN

FOR A:=1 TO 40 DO X[A]:= RANDOM(10000)+1;

WRITE('|',X[1]);
FOR A:=2 TO 39 DO WRITE(' ',X[A],' ');
WRITE(X[40],'|');



FOR A:=1 TO 40 DO

	BEGIN
	
	FOR L:=1 TO 39 DO
	
		BEGIN
		
		IF (X[L+1]>X[L]) THEN 
		
			BEGIN
		  
			B:=X[L];
			X[L]:=X[L+1];
			X[L+1]:=B;						
			
			WRITE('|',X[1]);
			FOR A:=2 TO 39 DO WRITE(' ',X[A],' ');
			WRITELN(X[40],'|');
						
			END;		
		
		END;
	
	END;

END.