var a,b:array[0..256] of string;
    ch:char;
    tam,tamc,tams,t,goc,s:string;
    i,n,j,max,k,vt,d,h:longint;
    f1,f2:text;
    tam1:string;
procedure dc(var q,p:string);
var tmp:string;
begin
        tmp:=q;
        q:=p;
        p:=tmp;
end;

begin

        assign(f1,'sx.inp'); reset(f1);
        assign(f2,'sx.out'); rewrite(f2);
        readln(f1,s);
        d:=0;
        while s[1]=' ' do
                delete(s,1,1);
        while s[length(s)]=' ' do
                delete(s,length(s),1);
        while pos('  ',s)<>0 do
                delete(s,pos('  ',s),1);
        i:=1;
        j:=1;
        while j<=length(s) do
                begin
                        if s[j]<>' ' then
                                begin
                                        a[i]:=a[i]+s[j];
                                        inc(j);
                                end
                        else
                                begin
                                        inc(i);
                                        inc(d);
                                        inc(j);
                                end;
                end;
        for i:=1 to d-1+1 do
                for j:=i+1 to d+1 do
                        if length(a[i])>length(a[j]) then
                                        dc(a[i],a[j]);
        for i:=1 to d+1 do
                write(f2,a[i],' ');
        close(f1); close(f2);
end.
