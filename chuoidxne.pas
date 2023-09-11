var f1,f2:text;
    s,s1:string;
    i,n,j,k,max,vt1,vt2:longint;
function dx(st:string):boolean;
var k:byte;
    str:string;
begin
    str:='';
    for k:=length(st) downto 1 do str:=str+st[k];
    if st=str then exit(true) else exit(false);
end;
begin
        assign(f1,'chuoidx.inp'); reset(f1);
        assign(f2,'chuoidx.out'); rewrite(f2);
        readln(f1,s);
        for i:=1 to length(s)-1 do
                for j:=i+1 to length(s) do
                        begin
                                s1:=copy(s,i,j);
                                if dx(s1) then
                                                if max<length(s1) then
                                                        begin
                                                                max:=length(s1);
                                                                vt1:=i;
                                                        end;

                        end;


        if max >1 then
                begin
                        writeln(f2,'co');
                        write(f2,max,' ',vt1,' ',vt1+max-1);
                end
        else write(f2,'khong');
        close(f1); close(f2);
end.