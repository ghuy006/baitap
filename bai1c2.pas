uses crt,windows;
var n,i,s,t:qword;
    f1,f2:text;
function  mu(x,y:longint):int64;
var j:longint;
    m:int64;
begin
        if y=0 then exit(1);
        m:=mu(x,y div 2);
        if y mod 2 =1 then mu:=m*m*x
        else mu:=m*m;
end;

begin

        t:=gettickcount;
        assign(f1,'bai1.inp'); reset(f1);
        assign(f2,'bai1.out'); rewrite(f2);
        readln(f1,n);

        writeln(f2,(mu(1,n)+mu(2,n)+mu(3,n)+mu(4,n)) mod 5);
        t:=gettickcount-t;
        writeln(f2,t,'mili');
        close(f1); close(f2);
end.