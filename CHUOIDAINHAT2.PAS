Var M: array[1..200] of integer;
    i,n,dau,ldau,dai,Max: integer;
    f1,f2:text;
{----------------------------------------------}
procedure Nhap;

begin

assign(f1,'cungdau.INP');

reset(f1);

readln(f1,n);

for i:=1 to n do

read(f1,m[i]);

close(f1);

end;
{-------------------------------------------------}
procedure xuly;

Begin

     i:=0;

     Max:=1;

     dau:=1;

     dai:=1;

     ldau:=1;

     While i<=n do

     Begin

     i:=i+1;

     if M[i+1]*M[i]>0 then dai:=dai+1 else

     if dai> Max then Begin Max:=dai; ldau:=dau; dai:=0 End

     else Begin dau:=i+1; dai:=1 End;

     End;

End;
{---------------------------------------------}
procedure Xuat;

begin

assign(f2,'BAI3.OUT');

rewrite(f2);



                    writeln(f2,max,ldau:2);

close(f2);

end;
{-------------------------------------------------------}
Begin

Nhap;

Xuly;

Xuat;

End.
