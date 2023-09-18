var a,b:array[0..256] of string;
    ch:char;
    tam,tamc,tams:string;
    i,n,j,max,k,vt,d,h:longint;
    f1,f2:text;
    tam1:string;


begin
        assign(f1,'ceasar.inp'); reset(f1);
        assign(f2,'ceasar.out'); rewrite(f2);
        readln(f1,tam);
        for i:=1 to length(tam) do
                tam[i]:=chr(ord(tam[i])-5);
        delete(tam,1,4);
        writeln(f2,tam);

        close(f1); close(f2);
end.

