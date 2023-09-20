var a,b:array[0..256] of string;
    ch:char;
    tam,tamc,tams,t,goc,s:string;
    i,n,j,max,k,vt,d,h:longint;
    f1,f2:text;
    tam1:string;
function dx(var q:string):boolean;
var tmp:string;
    p:longint;
begin
        tmp:='';
        for p:=length(q) downto 1 do
           tmp:=tmp+q[p];
        if q=tmp then exit (true) else exit (false);
end;

begin

        assign(f1,'xaucon.inp'); reset(f1);
        assign(f2,'xaucon.out'); rewrite(f2);
        readln(f1,tam1);
        readln(f1,s);
        d:=0;
        for i:=1 to length(s)-1 do
                for j:=i+1 to length(s) do
                        begin
                                tam:=copy(s,i,j-i+1);
                                writeln(f2,tam);
                                if tam=tam1 then
                                        inc(d);
                        end;



                write(f2,d);
        close(f1); close(f2);
end.
