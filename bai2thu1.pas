
uses crt,windows;
type km=array[1..10000] of longint;
var n,i,max,t,k,res,j:longint;
    f1,f2:text;
    z:string;
    s:array['A'..'Z'] of longint;
    ch:char;
    f:km;
procedure doi(var a,b:longint);
var tm:longint;
begin
        tm:=a;
        a:=b;
        b:=tm;
end;
 procedure doikt(var c,d:char);
var tm1:char;
begin
        tm1:=c;
        c:=d;
        d:=tm1;
end;
procedure hd (var x,y:longint);
var tam:longint;
begin
        tam:=x;
        x:=y;
        y:=tam;
end;
procedure sx( var b:km);
var i1,j1,k1:longint;
begin
        for i1:=1 to n-1 do
                begin
                        k1:=i1;
                        for j1:=i1+1 to n do
                                if b[k1] <b[j1] then k1:=j1;
                        if k1<>i1 then hd(b[i1],b[k1]);
                end;
end;


begin
        assign(f1,'bai21.inp'); reset(f1);
        assign(f2,'bai21.out'); rewrite(f2);
        readln(f1,n,k);
        readln(f1,z);
        n:=length(z);
        fillchar(f,sizeof(f),0);
        for i:=1 to n-1 do
                begin
                        k:=i;
                        for j:=i+1 to n do
                                if z[k]>z[j] then k:=j;
                                if k<>i then doikt(z[i],z[k]);
                end;
        for i:=1 to n do
                begin
                        if( z[i]=z[i+1]) or( z[i]=z[i-1]) then inc(f[ord(z[i])]);

                end;
        sx(f);
        res:=0;
       i:=1;
       while k>0 do
        begin
                if k>=f[i] then
                begin
                        res:=res +sqr(f[i]);
                        k:=k -f[i];
                        inc(i);
                end
                else
                begin
                        res:=res+sqr(k);
                        break;
                end;
        end;



        writeln(f2,res);

        close(f1); close(f2);
end.








