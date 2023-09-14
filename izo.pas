 const max=10000000;
 type
     tlist = array[1..max] of longint;

  var
     data,a,c : tlist;
     i,n,t,s,k,d,t2,tv,q,s1,o:longint;
     f1,f2:text;




    procedure sort(var c; l,r: longint);
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
           sort(c,l,j);
         if i<r then
           sort(c,i,r);
      end;
begin
        assign(f1,'izo.inp'); reset(f1);
        assign(f2,'izo.out'); rewrite(f2);
        readln(f1,n);
        s:=0;
        for i:=1 to n do
                begin
                        readln(f1,a[i]);
                        s:=s+a[i];
                end;

        sort(a,1,n);
        d:=1; q:= n;
        s1:=0;
        while not (d>q)  do
                begin
                       s1 := s1+(a[q]-a[d]);
                        q:=q-1;
                        d:=d+1;

                end;

        writeln(f2,s1+s);



        close(f1); close(f2);
end.
