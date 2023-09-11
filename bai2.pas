uses crt,windows;
var n,i,max,t,k,res,j:longint;
    f1,f2:text;
    z:string;
    s:array['A'..'Z'] of longint;
    ch:char;
    x:array[1..10000] of longint;
procedure doi(var a,b:longint);
var tm:longint;
begin
        tm:=a;
        a:=b;
        b:=tm;
end;



begin
        assign(f1,'bai2.inp'); reset(f1);
        assign(f2,'bai2.out'); rewrite(f2);
        readln(f1,n,k);
        readln(f1,z);
        n:=length(z);
        for i:=1 to n do inc(x[ord(z[i])]);
        for i:=66 to 90 do
                for j:=90 downto i do
                        if x[j]>x[j-1] then doi(x[j],x[j-1]);
        i:=65;
        while k>0 do
                begin
                        if k>=x[i] then
                        begin
                                res:=res+sqr(x[i]);
                                k:=k-x[i];
                                inc(i);
                        end
                        else
                                begin
                                        res:=res +sqr(k);
                                        break;
                                end;
                end;




        writeln(f2,res);
        close(f1); close(f2);
end.








