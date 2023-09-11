uses crt, windows;
type km=array[1..10000000] of longint;
var f1,f2:text;
     i,j,n,t:longint;
     a:km;
procedure hd (var x,y:longint);
var tam:longint;
begin
        tam:=x;
        x:=y;
        y:=tam;
end;
procedure sx( var b:km);
var i1,j1,k1:longint;
begin
        for i1:=1 to n-1 do
                begin
                        k1:=i1;
                        for j1:=i1+1 to n do
                                if b[k1] >b[j1] then k1:=j1;
                        if k1<>i1 then hd(b[i1],b[k1]);
                end;
end;

begin
        t:=gettickcount;

     assign(f1,'sock01.in'); reset(f1);
     assign(f2,'sx.out'); rewrite(f2);

     readln(f1,n);
     for i:=1 to n do
     read(f1,a[i]);
     sx(a);
     for i:=1 to n do
     write(f2,a[i],' ');
     writeln(f2 );
     t:=gettickcount-t;
     writeln(f2 ,t,'mili');
     close(f1); close(f2);
end.
