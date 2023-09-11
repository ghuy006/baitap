uses crt,windows;
var n,i,s,t:qword;
    f1,f2:text;
function  mu(x,y,t:longint):int64;
var j:longint;
    m:int64;
begin
        if y=0 then exit(1);
        m:=mu(x,y div 2,t);
        if y mod 2 =1 then mu:=((m mod t) *(m mod t)*(x mod t)) mod t
        else mu:=((m mod t) * (m mod t)) mod t;



end;
begin
        t:=gettickcount;
        assign(f1,'bai1.inp'); reset(f1);
        assign(f2,'bai1.out'); rewrite(f2);
        readln(f1,n);

        writeln(f2,(mu(1,n,5)+mu(2,n,5)+mu(3,n,5)+mu(4,n,5)) mod 5 );
        t:=gettickcount-t;
        close(f1); close(f2);
end.
