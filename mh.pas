var a,b:array[0..256] of string;
    ch:char;
    tam,tamc,tams,t,goc:string;
    i,n,j,max,k,vt,d,h:longint;
    f1,f2:text;
    tam1:string;


begin
        assign(f1,'mahoathu.inp'); reset(f1);
        assign(f2,'mahoathu.out'); rewrite(f2);
        readln(f1,tam);

        t:='';
        for ch:='a' to 'z' do
                tamc:=tamc+ch;
        for ch:='z' downto 'a' do
                tams:=tams+ch;
        t:=tamc+tams;
        for i:=1 to length(tam) do
                if tam[i] in ['a'..'z'] then
                begin
                        tam[i]:=t[pos(tam[i],t)+26];
                end;


           writeln(f2,tam);
        close(f1); close(f2);
end.
