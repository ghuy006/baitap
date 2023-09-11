var a:array[1..1000000] of longint;
    f:array[0..1000000] of longint;
    i,n,k,vt,max,d,j:longint;
    f1,f2:text;
begin
        assign(f1,'cungdau.inp'); reset(f1);
        assign(f2,'cungdau.out'); rewrite(f2);
        readln(f1,n);
        f[0]:=0;
        max:=0;
        for i:=1 to n do
                read(f1,a[i]);
        for i:=1 to n do
                begin
                        if (a[i]*a[i+1]>0)   then f[i]:=f[i-1]+1
                        else f[i]:=1;
                        if a[n]*a[n-1]>0 then f[n]:=f[n-1]+1;
                end;
        for i:=1 to n do write(f2,f[i],' ');
        for i:=1 to n do
                begin
                        if f[i] >max then
                                begin
                                        max:=f[i];
                                        vt:=i;
                                end;
                end;
        writeln(f2,'max',max,' ',vt-max+1);
        close(f1); close(f2);
end.
