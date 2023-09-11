const nmax=1000000;
var i,n,p,q,m,u,v,j,t,k:longint;
    s:array[1..nmax] of boolean;
    f,a:array[1..1000000] of longint;
    f1,f2:text;

procedure sang;
var i1,j1:longint;
begin
        fillchar(s,sizeof(s),true);
        s[1]:=false;
        i1:=2;
        while i1<= trunc(sqrt(nmax)) do
                begin
                        while s[i1]=false do inc(i1);
                        for j1:=2 to nmax div i1 do
                                s[i1*j1]:=false;
                        inc(i1);
                end;
end;
begin
        assign(f1,'ntpqm.inp'); reset(f1);
        assign(f2,'ntpqm.out'); rewrite(f2);
        readln(f1,n,t);
        readln(f1,p,q,m);
        sang;
        for i:=1 to n do
                begin
                        a[i]:=(p*i) mod m +q;
                        if s[a[i]] then
                                if i=1 then f[1]:=1
                                else f[i]:=f[i-1]+1
                        else
                                if i=1 then f[1]:=0

                                else f[i]:=f[i-1];
                 end;


        for k:=1 to t do
                begin
                        readln(f1,u,v);
                        if s[a[u]] then writeln(f2,f[v]-f[u]+1 )
                        else writeln(f2,f[v]-f[u]);
                end;
        close(f1); close(f2);
end.