var     f1,f2:text;
        n,k:longint;
        a:array[1..10000] of longint;

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



function test1(a,b,c:longint):boolean;
begin
        if a<b+c then test1:=true else test1:=false;
end;

function test2(q,w,r:longint):boolean;
begin
        if q=w+r then test2:=true else test2:=false;
end;

begin
        assign(f1,'stdinput.inp');      reset(f1);
        assign(f2,'stdoutput.out');     rewrite(f2);
        readln(F1,n);
        for k:=1 to n do
        begin
                readln(f1,a[1],a[2],a[3],a[4]);
                sort(1,4);
                if test1(a[1],a[2],a[3]) or test1(a[2],a[3],a[4])   then writeln(f2,'TRIANGLE')
        else
                if test2(a[1],a[2],a[3]) or test2(a[2],a[3],a[4])  then writeln(f2,'SEGMENT')
        else
                writeln(f2,'IMPOSSIBLE');
        end;
        close(f1);
        close(f2);
end.
