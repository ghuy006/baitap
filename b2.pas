var a,b:array[0..256] of string;
    ch:char;
    tam,tamc,tams,t,goc,s,st,ss:string;
    i,n,j,max,k,vt,d,h,vt1,vt2:longint;
    f1,f2:text;
    tam1:string;
function dx( x:string):string;
var tmp:string;
     i1:longint;
begin
        tmp:='';
        for i1:=length(x) downto 1 do
                tmp:=tmp+x[i1];
        dx:=tmp;

end;

begin

        assign(f1,'sx2.inp'); reset(f1);
        assign(f2,'sx2.out'); rewrite(f2);
        readln(f1,s);
        d:=1;
        i:=1;
        j:=1;
        while s[1]=' ' do
                delete(s,1,1);
        while s[length(s)]=' ' do
                delete(s,length(s),1);
        while pos('  ',s)<>0 do
                delete(s,pos('  ',s),1);
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
        for i:=1 to d do
             begin
                 tam:=a[i];
                 ss:='';
                 st:='';
                  k:=length(tam);
                if length(tam) mod 2 =0 then
                        begin
                                for h:=1 to (length(tam) div 2 )   do
                                        ss:=ss+tam[h];
                                vt:=pos(ss,tam);
                                delete(tam,vt,length(ss));
                                insert(ss,tam,k);
                                a[i]:=tam;

                        end
                 else
                        begin
                                for h:=1 to length(tam) div 2 do
                                        st:=st+tam[h];
                                vt1:=pos(st,tam);
                                for h:= length(tam) div 2+2 to  length(tam)  do
                                        ss:=ss+tam[h];
                               
                                delete(tam,vt1,length(st));
                                delete(tam,pos(ss,tam),length(ss));
                                 insert(st,tam,k);
                                  insert(ss,tam,1);
                                  a[i]:=tam;
                        end;

                end;
        writeln(f2,d);
        for j:=1 to d do
        write(f2,a[j],' ');
                close(f1); close(f2);
end.
