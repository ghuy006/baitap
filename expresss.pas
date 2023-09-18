var a,b:array[1..10000] of qword;
    f1,f2:text;
    i,vt1,vt2,n,vt3:longint;
    max3,max2,max1,t1,t2:qword;
begin
        readln(n);
        max1:=0;
        max2:=0;
        max3:=0;
        for i:=1 to n do
                begin
                         readln(f1,a[i]);
                         b[i]:=a[i];
                end;
        for i:=1 to n-1 do
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
        a[vt1]:=0;
        a[vt1+1]:=0;
        a[vt2+1]:=0;
        a[vt2]:=0;
        t1:=max1+max2;
        for i:=1 to n do
                t1:=t1+a[i];
        for i:=1 to n -2 do
                begin
                        if b[i]*b[i+1]*b[i+2] > max3 then
                                begin
                                        max3:=b[i]*b[i+1]*b[i+2] ;
                                        vt3:=i;
                                end;
                end;
        b[vt3]:=0;
        b[vt3+1]:=0;
        b[vt3+2]:=0;
        t2:=max3;
        for i:=1 to n do
                t2:=t2+b[i];
        if t1>t2 then write(t1) else write(t2);

end.
