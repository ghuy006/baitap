PROGRAM timban;
uses crt;
var
   f1,f2:text;
   st:string;
   m,x,y:longint;
FUNCTION uoc(k:longint):longint;
VAR i,tong:INTEGER;
  BEGIN
   tong:=0;
    FOR i:=1 TO k DIV 2 DO
    IF k MOD i =0 THEN tong:=tong+i;
     uoc:=tong;
  END;
BEGIN
     clrscr;
     assign(f1,'sbb.INP');
     Reset(f1);
     Read(f1,x,y);
     for m:= x to y do
   if uoc(uoc(m)) = m then
      Begin
           assign(f2,'sbb.OUT');
           Rewrite(f2);
           writeln(f2,m,uoc(m):4);
           Close(f2);
      end;
END.
