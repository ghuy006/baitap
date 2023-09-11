var a:array[1..100000] of longint;
    f:array[0..100000] of longint;
    i,n,max:longint;
    f1,f2:text;
begin
        readln(n);
        f[0]:=0;
        max:=0;
        for i:=1 to n do
                read(a[i]);
        for i:=1 to n do
                begin
                        if a[i]<=a[i+1] then f[i]:=f[i-1]+1
                        else f[i]:=1;
                end;
        for i:=1 to n do
                begin
                        if f[i] >max then
                                        max:=f[i];
                end;

        writeln(max);
end.
