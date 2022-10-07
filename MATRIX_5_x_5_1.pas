PROGRAM MATRIX_5X5_1 ;

VAR

X: ARRAY[1..5,1..5] OF REAL;
A,B,C,D,BMENOS: INTEGER;

BEGIN

FOR A:=1 TO 5 DO

	BEGIN
	
	FOR B:=1 TO 5 DO
	
		BEGIN
		
		WRITE('INSIRA O VALOR DE X[',A,',',B,']: ');
		READLN(X[A,B]);
		
		END;
	
	END;

WRITELN('');

FOR D:=1 TO 4 DO

	BEGIN
	
		FOR A:=D TO 4 DO

			BEGIN
	
			FOR BMENOS:=1 TO 5 DO
	
				BEGIN
		
				X[A+1,6-BMENOS]:= X[A+1,6-BMENOS]-(X[D,6-BMENOS]*X[A+1,D])/(X[D,D]); 
		
				END;
	
	 		FOR C:=1 TO 5 DO WRITELN('|',X[C,1],' ',X[C,2],' ',X[C,3],' ',X[C,4],' ',X[C,5],'|');
   		WRITELN('');
	
			END;

	END;


WRITELN('');
WRITELN('O DET DE X É ',X[1,1]*X[2,2]*X[3,3]*X[4,4]*X[5,5]);

END.