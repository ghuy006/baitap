TYPE km=array[1..1000000] of longint;
var A:km;
    f1,f2:text;
    i,n,k,j:longint;
{---------------------------------------------------}
procedure dc(var x,y:longint);
var tg:longint;
begin
    tg:=x;
    x:=y;
    y:=tg;
end;
{-----------------------------------------------------}
procedure sx(var B:km);
var i1,k1,j1:longint;
begin
     for i1:=1 to n-1 do
     begin
         k1:=i1;
         for j1:=i1+1 to n do
         if B[k1]>B[j1] then k1:=j1;
         if i1<>k1 then dc(B[i1],B[k1]);
     end;
end;
{------------------------------------------------------}
begin
      assign(f1,'xoa.inp'); reset(f1);
      assign(f2,'xoa.out'); rewrite(f2);
      read(f1,n);
      for i:=1 to n do
      begin
           read(f1,A[i]);
           if a[i]<0 then a[i]:=abs(a[i]);
      end;
      i:=2;
      while i<=n do
      begin
          j:=1;
          while A[i]<> A[j] do j:=j+1;
          if j<i then
                     begin
                          for k:=i to n-1 do
                          A[k]:=A[k+1];
                          n:=n-1;
                     end
          else i:=i+1;
      end;
      for i:=1 to n do write(f2,A[i],' ');
      close(f1); close(f2);
end.
