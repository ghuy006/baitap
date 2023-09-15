var a:array[0..256] of longint;
    s:array[1..1000] of string;
    ch:char;
    tam:string;
    i,n,j,max:longint;
    f1,f2:text;
begin
        assign(f1,'tanso.inp'); reset(f1);
        assign(f2,'tanso.out'); rewrite(f2);
        readln(f1,n);
        fillchar(a,sizeof(a),0);
        for i:=1 to n do
                begin
                        readln(f1,s[i]);
                        tam:=upcase(s[i]);
                        for j:=1 to length(tam) do
                                inc(a[ord(tam[j])]);

                end;
        max:=0;
        for i:=0 to 256 do
                if a[i] >max then max:=a[i];
        writeln(f2,max);
        close(f1); close(f2);
end.

