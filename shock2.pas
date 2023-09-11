uses crt,windows;
type km=array[1..1000000] of longint;
var     f1,f2:text;
        n,k,i,tv,min,d,j,t:longint;
        a,f:km;

procedure sort(l,r: longint);
      var
         i,j,x,y: longint;
      begin
         i:=l;
         j:=r;
         x:=a[(l+r) div 2];
         repeat
           while a[i]<x do
            inc(i);
           while x<a[j] do
            dec(j);
           if not(i>j) then
             begin
                y:=a[i];
                a[i]:=a[j];
                a[j]:=y;
                inc(i);
                j:=j-1;
             end;
         until i>j;
         if l<j then
           sort(l,j);
         if i<r then
           sort(i,r);
      end;

begin
        t:=gettickcount;
        assign(f1,'random.inp');      reset(f1);
        assign(f2,'b1.out');     rewrite(f2);
        readln(F1,n);
        for i:=1 to n do
                        read(f1,a[i]);
        sort(1,n);

        d:=0;
        i:=1;
        while i<=n do
                begin
                        if a[i]=a[i+1]  then
                                begin
                                        inc(d);
                                        i:=i+2;
                                end
                        else i:=i+1;
                end;
        writeln(f2,d);
        t:=gettickcount-t;
        writeln(f2,t,' ');

        close(f1); close(f2);

end.
