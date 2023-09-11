var     f1,f2:text;
        n,i,j,t,k,kq:longint;
        a:array[1..10000] of longint;
        b:array[0..2] of longint;
function min(x,y:longint):longint;
begin
        if x>y then min:=y else min:=x;
end;
begin
        assign(f1,'paper.inp'); reset(f1);
        assign(f2,'paper.out'); rewrite(f2);
        readln(f1,t);
        for i:=1 to t do
                begin
                        readln(f1,n);
                        fillbyte(b,sizeof(b),0);
                        for j:=1 to n do
                                begin
                                        read(f1,A[i]);
                                        k:=a[i] mod 3;
                                        inc(b[k]);
                                end;
                        if b[0] mod 2 =0 then
                                                kq:= (b[0] div 2)+ min(b[1],b[2])
                        else
                                                kq:= ((b[0]-1) div 2 ) + min(b[1],b[2]);
                        writeln(f2,kq);
                end;

        close(f1);
        close(f2);
end.
