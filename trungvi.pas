type km=array[1..10000] of longint;
var     f1,f2:text;
        n,k,i,tv:longint;
        a:km;
procedure dc(var x,y:longint);
var tam:longint;
begin
        tam:=x;
        x:=y;
        y:=tam;
end;

procedure sort(var b:km);
var i1,j1,k1:longint;
begin
        for i1:=1 to n-1 do
                begin
                        k1:=i1;
                        for j1:=i1+1 to n do
                        if b[k1]>b[j1] then k1:=j1;
                        if k1<>i1 then dc(b[i1],b[k1]);
                end;

end;
begin
        assign(f1,'trungvi.inp');      reset(f1);
        assign(f2,'trungvi.out');     rewrite(f2);
        readln(F1,n);
        for i:=1 to n do read(f1,a[i]);
        sort(a);
        tv:=n div 2 +1;
        writeln(f2,a[tv]);
        close(f1); close(f2);
end.