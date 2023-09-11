var a:array[1..10000] of longint;
    f1,f2:text;
    max1,max2,i,vt1,vt2,n,t:longint;
begin
        assign(f1,'express.inp'); reset(f1);

        assign(f2,'express.out'); rewrite(f2);
        readln(f1,n);
        max1:=0;
        max2:=0;
        for i:=1 to n do
                readln(f1,a[i]);
        for i:=1 to n do
                begin
                        if a[i]*a[i+1]>max1 then
                                begin
                                        max2:=max1;
                                        max1:=a[i]*a[i+1];
                                        vt1:=i;
                                end
                        else
                              if a[i]*a[i+1]>max2 then
                                begin
                                        max2:=a[i]*a[i+1];
                                        vt2:=i;
                                end


                end;
         for i:=1 to n do
                begin
                                if a[i]*a[i+1]=max2 then
                                        begin
                                                vt2:=i;
                                        end;
                end;
        writeln(f2,max1,' ',vt1,' ',max2,' ',vt2);
        t:=0;
        for i:=1 to n do
                begin

                        if (i<> vt1) and (i<>vt2) and (i<>vt1+1) and (i<>vt2+1) then
                                t:=t+a[i];
                end;
        if vt1+1=vt2  then  writeln(f2,max2*a[vt1]+t)
        else
                if vt2+1=vt1 then  writeln(f2,max1*a[vt2]+t)
                else

                        writeln(f2,max1+max2+t);
        close(f1); close(f2);
end.
