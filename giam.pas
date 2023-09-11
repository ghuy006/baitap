uses crt, windows;
type km=array[1..10000000] of longint;
var f1,f2:text;
     i,j,n,t:longint;
     a:km;
procedure sort(l,r: longint);
      var
         i,j,x,y: longint;
      begin
         i:=l;
         j:=r;
         x:=a[(l+r) div 2];
         repeat
           while a[i]>x do
            inc(i);
           while x>a[j] do
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
  assign(f1,'sock01.in'); reset(f1);
     assign(f2,'sx.out'); rewrite(f2);

     readln(f1,n);
     for i:=1 to n do
     read(f1,a[i]);
     sort(1,n);
     for i:=1 to n do
     write(f2,a[i],' ');
     writeln(f2 );
     t:=gettickcount-t;
     writeln(f2 ,t,'mili');
     close(f1); close(f2);
end.
