Program Projeto_relogio_PT1;

LABEL JUNINHO;

VAR

A,B,C: INTEGER;

Begin
A:=39;
B:=0;
C:=9;

WRITELN('0:0:0');
READLN();

JUNINHO:

IF B=59 THEN
BEGIN
A:=1+A;
B:=0
END
ELSE
BEGIN
B:=B+1;
END;

IF A=59 THEN
BEGIN
C:=1+C;
A:=0
END;

WRITELN(C,':',A,':',B);
DELAY(997);
GOTO JUNINHO;
  
End.