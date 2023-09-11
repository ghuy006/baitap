uses    crt,windows;
type    tlist=array[0..1000000] of int64;
var     n,s,tong:int64;
        I,J,K:LONGINT;
        f1,f2:text;
        A:tlist;
        B:array[0..100000000] of int64;
procedure hoandoi(var x,y:int64);
    var tam:int64;
    begin
        tam:=x;
        x:=y;
        y:=tam;
    end;

procedure sapxep(var a:tlist);

    begin
        for i:=1 to n-1 do
          begin
            k:=i;
            for j:=i+1 to n do
              if a[k] > a[j] then k:=j;
            if k<>i then hoandoi(a[i],a[k]);
           end;
    end;
function min(a,b,c:int64):int64;
begin
        if (a<b) and (a<c) then min:=a
        else if (b<a) and (b<c) then min:=b
             else min:=c;
end;
begin
assign(f1,'bai2.inp'); reset(f1);
assign(f2,'bai2.out'); rewrite(f2);
readln(f1,n);
s:=0;
for i:=1 to n do
        begin
                read(f1,A[i]);
        end;
sapxep(a);   i:=1;
while i<=n do
        begin
                s:=s+min(A[i],A[i+1],A[i+2]);
                i:=i+3;
        end;
writeln(f2,s);
close(f1); close(f2);
end.
