var c,i,k,max,vt:longint;
    code:integer;
    a,b,ch:string;
    f1,f2:text;
function dao(z:longint):longint;
var i1,k1:longint;
begin
        i1:=0;
        while z<> 0 do
                begin
                        K1:=z mod 10;
                        z:=z div 10;
                        i1:=i1+k1;
                end;
        dao:=i1;
end;
begin
        assign(f1,'thu.inp'); reset(f1);
        assign(f2,'thu.out'); rewrite(f2);
        readln(f1,a);
        b:=a;
        max:=0;
                for i:=1 to length(a) do
                        begin
                                val(a[i],k,code);
                                if k>max then
                                        begin
                                                max:=k;
                                                vt:=i;
                                        end;
                        end;


        val(b,c,code);
        writeln(f2,dao(c));
        writeln(f2,max);
        str(max,ch);
        for i:=1 to length(a) do
                if a[i]=ch then write(f2,i,' ');
        close(f1); close(f2);
end.
