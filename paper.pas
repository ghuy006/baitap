var n,t,d,i,j,x,y:longint;
    f1,f2:text;
    a:array[1..1000000] of longint;
    st1,st2,s1,s2:string;
    code:integer;

begin
assign(f1,'paper.inp'); reset(f1);
assign(f2,'paper.out'); rewrite(f2);
readln(f1,t);
for j:=1 to t do
        begin
                d:=0;
                readln(f1,n);
                for i:=1 to n do
                        read(f1,a[i]);
                for i:=1 to n do
                        begin
                                 if i<>n then
                                        begin

                                                str(a[i],s1); str(a[i+1],s2);
                                                st1:=s1+s2;
                                                st2:=s2+s1 ;
                                        end
                                        else
                                                begin
                                                         str(a[n-1],s1); str(a[n],s2);
                                                         st1:=s2+s1;
                                                end;
                                if st1<>st2 then
                                        begin
                                                val(st1,x,code); val(st2,y,code);
                                                writeln(f2,x,' ',y);
                                                if (x mod 3 = 0) or (y mod 3=0) and (x<>y) then inc(d);
                                        end;
                       end;

                writeln(f2,d);
        end;
        close(f1); close(f2);
end.