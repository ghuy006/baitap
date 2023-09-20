
var a,b:array[0..256] of string;
    ch:char;
    tam,tamc,tams:string;
    i,n,j,max,k,vt,d,h:longint;
    f1,f2:text;
    tam1:string;
procedure sx(var g,k:longint );
var t:longint;
begin
        t:=g;
        g:=k;
        k:=t;
end;
procedure dc(var q,p:string);
var tmp:string;
begin
        tmp:=q;
        q:=p;
        p:=tmp;
end;
begin
        assign(f1,'sapxepxau.inp'); reset(f1);
        assign(f2,'sapxepxau.out'); rewrite(f2);
        readln(f1,n);
        for i:=1 to n do
                readln(f1,a[i]);
       //sort(e);
        for i:=1 to n-1 do
                for j:=i+1 to n do
                        if  length(a[i])>length(a[j]) then
                                begin
                                        dc(a[i],a[j]);
                                end;
        for i:=1 to n do
        writeln(f2,a[i]);

        close(f1); close(f2);
end.

