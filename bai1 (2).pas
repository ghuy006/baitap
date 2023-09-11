uses    crt,windows;
type    km=array[1..1000000] of longint;
var     f1,f2:text;
        n,i,j,max,k,time:longint;
        a,b:km;
{-------------------------------------------------}
procedure       traodoi(var e,f:longint);

var     d:longint;
begin
        d:=e;
        e:=f;
        f:=d;
end;
{-------------------------------------------------}
procedure       sapxep(trai,phai:longint);
var     i,j,moc:longint;
begin
        if trai<phai then
        begin
                moc:=a[trai];
                i:=trai+1;
                j:=phai;
                while i<=j do
                begin
                        while(i<=phai) and (a[i]<moc) do
                        inc(i);
                        while (j>trai+1) and (a[j]>moc) do
                        dec(j);
                        if i<=j then
                        begin
                                traodoi(a[i],a[j]);
                                inc(i);
                                dec(j);
                        end;
                end;
                traodoi(a[trai],a[j]);
                sapxep(trai,j-1);
                sapxep(j+1,phai);
        end;
end;
{-------------------------------------------------------------}
begin
        max:=0;
        time:=gettickcount;
        fillchar(b,sizeof(b),0);
        assign(f1,'random.inp');reset(f1);
        assign(f2,'bai1.out');rewrite(f2);
            readln(f1,n);
            for i:=1 to n do read(f1,a[i]);
               sapxep(1,n);
               j:=1;
               while j<=n do
                 begin
                  if a[j]=a[j+1] then
                        begin
                        b[j]:=1;
                        j:=j+2;
                        end
                              else
                              begin
                              b[j]:=0;
                  j:=j+1;
                  end;
                end;
                if (a[n]=a[n-1]) and (a[n-1]<>a[n-2]) then b[n-1]:=1;
                for k:=1 to n do max:=max+b[k];
                write(f2,max,' ');
           time:=gettickcount-time;
           writeln(f2);
           writeln(f2,time,' mili giay');
        close(f1);close(f2);
end.
