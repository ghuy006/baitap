uses crt,windows;
var n,i,s,t:qword;
    f1,f2:text;
function  mu(x,y,t:longint):int64;
var j:longint;
    m:int64;
begin
        m:=1;
        for j:=1 to y do
                begin
                        m:=m*x;
                        m:=m mod t;
                end;
        mu:=m;


end;
begin
        t:=gettickcount;
        assign(f1,'bai1a.inp'); reset(f1);
        assign(f2,'bai1a.out'); rewrite(f2);
        readln(f1,n);

        writeln(f2,(mu(1,n,5)+mu(2,n,5)+mu(3,n,5)+mu(4,n,5)) mod 5 );
        t:=gettickcount-t;
        close(f1); close(f2);
end.
