Program Pzim ;

VAR

X: ARRAY[1..100000] OF REAL;
A,B: INTEGER;
C: REAL;

BEGIN

FOR A:=1 TO 100000 DO
	
	BEGIN
	
	IF (A)MOD(2)=1 THEN X[A]:=4/(2*A-1) ELSE X[A]:=-4/(2*A-1); 
	C:= C+X[A];
	WRITELN(X[A],' ',C);
	
	END;
  
END.