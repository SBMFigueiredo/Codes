Program DIVISORES ;
LABEL K,L;

VAR

X,Y,Z,A,B,C:INTEGER;

Begin
K:
WRITE('ESCREVA O NÚMERO PARA APURAÇÃO: ');
READLN(X);

Y:=2;
A:=1;

REPEAT
Z:=(X)MOD(Y);

IF Z=0 THEN
	
	BEGIN
	
	C:=0;
	
	REPEAT
	
	B:=(Y)MOD(A); 
	
	IF B = 0 THEN
		
		BEGIN
	  
		 C:=C+1;		
		
		END; 
	 
	 A:=A+1;
	
	UNTIL A > Y;
	
	IF C = 2 THEN
		BEGIN
		 WRITELN(Y);
		END
		
	END;

A:=1;	
Y:=Y+1;

UNTIL Y > X;

WRITELN('');
GOTO K;

End.