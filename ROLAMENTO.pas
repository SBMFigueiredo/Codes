Program Pzim ;

VAR

A: ARRAY[1..4,1..4] OF INTEGER;
VETOR: ARRAY[1..4] OF INTEGER;
B,C,D,E: INTEGER;


BEGIN

FOR C:=1 TO 4 DO A[C,C]:=1;

FOR B:=1 TO 17 DO

	BEGIN
	 
	 WRITELN('|',A[1,1],' ',A[1,2],' ',A[1,3],' ',A[1,4],'|'); 
	 WRITELN('|',A[2,1],' ',A[2,2],' ',A[2,3],' ',A[2,4],'|');
	 WRITELN('|',A[3,1],' ',A[3,2],' ',A[3,3],' ',A[3,4],'|');
	 WRITELN('|',A[4,1],' ',A[4,2],' ',A[4,3],' ',A[4,4],'|');
	 
	 WRITELN('');
	 
	 FOR D:=1 TO 4 DO
	
	  BEGIN
	 	
		VETOR[D]:= A[D,4];
	 	A[D,4]:=A[D,3];
	 	A[D,3]:=A[D,2];
	 	A[D,2]:=A[D,1];
	 	A[D,1]:=VETOR[D];
	  
		END;
	
	END;
  
END.