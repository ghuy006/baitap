var
     i,n,max,min,b,j,du,tong,tien,vt:longint;
     a:array[1..100000] of longint;
     f1,f2:text;
begin
        assign(f1,'money.inp'); reset(f1);
        assign(f2,'money.out'); rewrite(f2);
        readln(f1,n,b);
        for i:=1 to n do
                read(f1,a[i]);
        min:=1000000;
        for i:=1 to n-1 do
                begin
                        if a[i]<min then
                                begin
                                        min:=a[i];
                                        vt:=i;
                                end;
                end;
        max:=0;

        for j:=vt to n do
               if max<a[j] then max :=a[j];

        tien:=(b div min)*max;
        du:=b mod min;
        if max = min then  writeln(f2,b)
        else
        writeln(f2,tien+du);

        close(f1); close(f2);
end.
