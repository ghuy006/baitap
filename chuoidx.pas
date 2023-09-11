var f1,f2:text;
    s,P,Q,st1:string;
    i,d,j:byte;
function ktdx(st:string):boolean;
var k:byte;
    str:string;
begin
    str:='';
    for k:=length(st) downto 1 do str:=str+st[k];
    if st=str then exit(true) else exit(false);
end;
BEGIN
    Assign(f1,'XKT.INP');  reset(f1);
    Assign(f2,'XKT.OUT');  rewrite(f2);
    readln(f1,s);
    d:=0;  P:='';
    for i:=1 to length(s) do
        begin
            P:=s[i];
            for j:=i to length(s) do
                if i<>j then
                P:=P+s[j];

            if ktdx(P) then
                begin
                     inc(d);

                end
        end;
        if d > 1 then writeln(f2,'co') else writeln(f2,'khong');
    write(f2,d);
    close(f1); close(f2);
END.
