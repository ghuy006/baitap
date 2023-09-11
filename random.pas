var i,n:longint;
    f:text;
begin
        randomize;
        assign(f,'random.inp'); rewrite(f);
        n:=100;
        writeln(f,n);
        for i:=1 to n do
                write(f,random(100),' ');
        close(f);
end.
