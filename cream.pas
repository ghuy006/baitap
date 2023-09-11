type
        km=array[1..100000000] of int64;
var
    n,m,t,d:int64;
        i,j,max:longint;
        A,B:km;
{--------------------------------------------------------------}
 procedure sort(var C:km; l,r: longint);
      var
         i,j,x,y: longint;
      begin
         i:=l;
         j:=r;
         x:=C[(l+r) div 2];
         repeat
           while C[i]<x do
            inc(i);
           while x<C[j] do
            dec(j);
           if not(i>j) then
             begin
                y:=C[i];
                C[i]:=C[j];
                C[j]:=y;
                inc(i);
                j:=j-1;
             end;
         until i>j;
         if l<j then
           sort(C,l,j);
         if i<r then
           sort(C,i,r);
      end;
{----------------------------------------------------------}
Begin
                readln(n,m);
                for i:=1 to n do
                        read(A[i]);
                for j:=1 to m do read(B[j]);
                sort(a,1,n); sort(b,1,m);
                d:=0;  i:=1; j:=1;
                if m<n then max:=n else max:=m;
        while i<= max  do
                                begin
                                         if (A[i]>B[j]) then
                                                begin
                                                         inc(d);
                                                         inc(i);
                                                         inc(j);
                                                end
                                         else inc(i);

                                end;
                write(d);

end.
