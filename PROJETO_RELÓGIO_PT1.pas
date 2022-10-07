Program Projeto_relogio_PT1;

LABEL JUNINHO;

VAR

A,B: INTEGER;

Begin
A:=0;
B:=0;

WRITELN('0:0');
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
WRITELN(A,':',B);
DELAY(992);
GOTO JUNINHO;
  
End.