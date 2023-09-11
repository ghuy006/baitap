var a,s:array[1..1000] of longint;
    n,d,t,i,j:longint;
    f1,f2:text;
begin
        assign(f1,'bus.inp'); reset(f1);
        assign(f2,'bus.out'); rewrite(f2);
        readln(f1,n,d,t);
        for i:=1 to n do
                read(f1,a[i]);
        for i:=1 to 100000 do
                for j:=0 to 100000 do
                        s[i]:=t+j*d ;

          for i:=1 to n do
        write(f2,(0-8) div 5 );
        close(f1); close(f2);
end.


