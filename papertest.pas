var n,t,d,i,j,x,y:longint;
    f1,f2:text;
    a:array[1..1000000] of longint;
    st1,st2,s1,s2:string;
    code:integer;

begin
readln(t);
for j:=1 to t do
        begin
                d:=0;
                readln(n);
                for i:=1 to n do
                        read(a[i]);
                for i:=1 to n do
                        begin
                                str(a[i],s1); str(a[i+1],s2);
                                st1:=s1+s2;
                                st2:=s2+s1;
                                val(st1,x,code); val(st2,y,code);
                                if (x mod 3 = 0) or (y mod 3=0) then inc(d);
                        end;
                writeln(d);
        end;
end.