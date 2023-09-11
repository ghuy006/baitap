var a:array[1..1000] of longint;
    n,max,min,dt,dl,i:longint;
    f1,f2:text;
begin
        assign(f1,'break.inp'); reset(f1);
        assign(f2,'break.out'); rewrite(f2);
        readln(f1,n);
        for i:=1 to n do
                read(f1,a[i]);
        max:=a[1];
        min:=a[1];
        dt:=0;
        dl:=0;
        for i:=2 to n do
                begin
                        if (a[i]>=a[i-1]) and (a[i]>max) then
                                begin
                                        inc(dt);
                                        max:=a[i];
                                end;
                         if (a[i]<=a[i-1]) and (a[i]<min) then
                                begin
                                        inc(dl);
                                        min:=a[i];

                                end;
                end;
        writeln(f2,dt,' ',dl);
        close(f1); close(f2);
end.


