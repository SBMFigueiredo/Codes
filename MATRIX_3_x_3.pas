PROGRAM MATRIX_3X3;

VAR

X: ARRAY[1..3,1..3] OF REAL;
A,B,C,D,BMENOS: INTEGER;

BEGIN

FOR A:=1 TO 3 DO

	BEGIN
	
	FOR B:=1 TO 3 DO
	
		BEGIN
		
		WRITE('INSIRA O VALOR DE X[',A,',',B,']: ');
		READLN(X[A,B]);
		
		END;
	

	END;


WRITELN('');
FOR C:=1 TO 3 DO WRITELN('|',X[C,1],' ',X[C,2],' ',X[C,3],'|');
WRITELN('');


FOR A:=1 TO 2 DO

	BEGIN
	
	FOR BMENOS:=2 TO 4 DO
	
		BEGIN
		
		X[A+1,5-BMENOS]:= X[A+1,5-BMENOS]-(X[1,5-BMENOS]*X[A+1,1])/(X[1,1]); 
		
		END;
	
	 FOR C:=1 TO 3 DO WRITELN('|',X[C,1],' ',X[C,2],' ',X[C,3],'|');
   WRITELN('');
	
	END;

FOR A:=2 TO 2 DO

	BEGIN
	
	FOR BMENOS:=2 TO 4 DO
	
		BEGIN
		
		X[A+1,5-BMENOS]:= X[A+1,5-BMENOS]-(X[2,5-BMENOS]*X[A+1,2])/(X[2,2]); 
		
		END;
	
	FOR C:=1 TO 3 DO WRITELN('|',X[C,1],' ',X[C,2],' ',X[C,3],'|');
  WRITELN('');
	
	END;

WRITELN('');
WRITELN('O DET DE X É ',X[1,1]*X[2,2]*X[3,3]);

END.

