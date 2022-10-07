PROGRAM MATRIX_4X4;

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
FOR C:=1 TO 5 DO WRITELN('|',X[C,1],' ',X[C,2],' ',X[C,3],' ',X[C,4],' ',X[C,5],'|');
WRITELN('');


FOR A:=1 TO 4 DO

	BEGIN
	
	FOR BMENOS:=1 TO 5 DO
	
		BEGIN
		
		X[A+1,6-BMENOS]:= X[A+1,6-BMENOS]-(X[1,6-BMENOS]*X[A+1,1])/(X[1,1]); 
		
		END;
	
	 FOR C:=1 TO 5 DO WRITELN('|',X[C,1],' ',X[C,2],' ',X[C,3],' ',X[C,4],' ',X[C,5],'|');
   WRITELN('');
	
	END;

FOR A:=2 TO 4 DO

	BEGIN
	
	FOR BMENOS:=1 TO 5 DO
	
		BEGIN
		
		X[A+1,6-BMENOS]:= X[A+1,6-BMENOS]-(X[2,6-BMENOS]*X[A+1,2])/(X[2,2]); 
		
		END;
	
	FOR C:=1 TO 5 DO WRITELN('|',X[C,1],' ',X[C,2],' ',X[C,3],' ',X[C,4],' ',X[C,5],'|');
  WRITELN('');
	
	END;


FOR A:=3 TO 4 DO

	BEGIN
	
	FOR BMENOS:=1 TO 5 DO
	
		BEGIN
		
		X[A+1,6-BMENOS]:= X[A+1,6-BMENOS]-(X[3,6-BMENOS]*X[A+1,3])/(X[3,3]); 
		
		END;
	
	FOR C:=1 TO 5 DO WRITELN('|',X[C,1],' ',X[C,2],' ',X[C,3],' ',X[C,4],' ',X[C,5],'|');
  WRITELN('');
	
	END;



WRITELN('');
WRITELN('O DET DE X É ',X[1,1]*X[2,2]*X[3,3]*X[4,4]);

END.

