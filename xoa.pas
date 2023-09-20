var a,b:array[0..256] of string;
    ch:char;
    tam,tamc,tams,t,goc,s:string;
    i,n,j,max,k,vt,d,h:longint;
    f1,f2:text;
    tam1:string;


begin
        assign(f1,'xoa.inp'); reset(f1);
        assign(f2,'xoa.out'); rewrite(f2);
        readln(f1,tam);
        i:=1;
        while i< length(tam) do
                if tam[i]=tam[i+1] then
                                delete(tam,i+1,1)
                else inc(i);

           writeln(f2,tam);
        close(f1); close(f2);
end.
