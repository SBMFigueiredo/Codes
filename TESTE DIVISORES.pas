Program DIVISORES ;
LABEL K;

VAR

X,Y,Z:INTEGER;

Begin

WRITE('ESCREVA O NÚMERO PARA APURAÇÃO: ');
READLN(X);
Y:=1;

K:REPEAT
Z:=(X)MOD(Y);

IF Z=0 THEN
	BEGIN
	WRITELN(Y);
	END;
	
Y:=Y+1;
GOTO K;
UNTIL X = Y;

End.