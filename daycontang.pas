var a:array[0..1000000] of longint;
    f:array[0..1000000] of longint;
    i,n,k,vt,max,d,j,u,v,t:longint;
    f1,f2:text;
begin
        assign(f1,'tong.inp'); reset(f1);
        assign(f2,'tong.out'); rewrite(f2);
        readln(f1,n);
        f[0]:=0;
        a[0]:=0;
        for i:=1 to n do
                read(f1,a[i]);
        for i:=1 to n do
                f[i]:=f[i-1]+a[i];
        readln(f1,t);
        for j:=1 to t do
                begin
                        readln(f1,u,v);
                        writeln(f2,f[v]-f[u-1]);
                end;
        close(f1); close(f2);
end.
