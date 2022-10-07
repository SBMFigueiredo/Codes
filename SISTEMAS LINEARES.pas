PROGRAM RESOLVEDOR_DE_SISTEMA_LINEAR;

VAR

V1,V2:  ARRAY[1..1000,1..1000] OF REAL;
L1: ARRAY[1..1000] OF REAL;
A,B,C,J,D:INTEGER;
DET1,DET2,ENTRADA:REAL;

FUNCTION DETERMINATOR():REAL;

VAR

REAL1:REAL;
D,G,BMENOS,E:INTEGER;
X: ARRAY[1..1000,1..1000] OF REAL;
	
	BEGIN
	
	FOR D:=1 TO A DO 
	
		BEGIN
		
		FOR G:=1 TO A DO X[D,G]:=V2[D,G];
		
		END;
	
	FOR D:=1 TO A-1 DO

		BEGIN
	
			FOR G:=D TO A-1 DO

				BEGIN
	
				FOR BMENOS:=1 TO A DO
	
					BEGIN
		
		    	E:= A+1-BMENOS;
		
					X[G+1,E]:= X[G+1,E]-(X[D,E]*X[G+1,D])/(X[D,D]); 
		
					END;
	
				END;

		END;

	REAL1:= 1;
	FOR D:=1 TO A DO REAL1:= REAL1*X[D,D];
	DETERMINATOR:=REAL1;
	
	END;

BEGIN 

WRITE('INSIRA O VALOR DA ORDEM DA MATRIX: '); 
READLN(A);

FOR B:=1 TO A DO
	
	BEGIN
	
	FOR C:=1 TO A DO 
	
	  BEGIN
		
		WRITE('INSIRA O VALOR DE A',B,C,': ');
		READLN(ENTRADA);
		V1[B,C]:=ENTRADA;
	  V2[B,C]:=V1[B,C];
		
		END;
	
	WRITE('INSIRA O VALOR DE L',B,': ');
	READLN(ENTRADA);
	L1[B]:=ENTRADA;
	
	END;
	
FOR B:=1 TO A DO
  
	BEGIN
		
	WRITE('| ',V1[B,1]);
	FOR C:=2 TO (A-1) DO WRITE(' ',V1[B,C],' ');
	WRITELN(V1[B,A],' | ',L1[B],' |');

	END;

WRITELN('');
DET1:=DETERMINATOR();

FOR B:=1 TO A DO 
	  
		BEGIN
		
		FOR D:=1 TO A DO V2[B,D]:=V1[B,D];
	  
		END;

FOR C:=1 TO A DO

	BEGIN
	
	FOR B:=1 TO A DO V2[B,C]:=L1[C];
	DET2:=DETERMINATOR();
	WRITELN('A',C,' = ',DET2/DET1);
	FOR B:=1 TO A DO 
	  
		BEGIN
		
		FOR D:=1 TO A DO V2[B,D]:=V1[B,D];
	  
		END;
	
	END; 

END.