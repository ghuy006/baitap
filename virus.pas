var a,b:array[0..256] of ansistring;
     e:array[0..255] of longint;
    ch:char;
    tam,tamc,tams:string;
    i,n,j,max,k,vt,d,h,q,p,c1,c2:longint;
    f1,f2:text;
    tam1:string;
begin
        assign(f1,'virus.inp'); reset(f1);
        assign(f2,'virus.out'); rewrite(f2);
        readln(f1,k,n);
        d:=0;
         for i:=1 to k do

                         readln(f1,a[i]);


         for j:=1 to n do
                readln(f1,b[j]);

         For q:=1 to k do
For p:=1 to n do
While pos(a[q],b[p])<>0 do
   Begin
        For i:=1 to n do
        For j:=1 to k do
        While pos(a[j],b[i])<>0 do
                Begin
                        Delete(b[i],pos(a[j],b[i]),length(a[j]));
                        Inc(c1);
                End;
        For i:=1 to n do
        For j:=1 to k do
        While pos(a[j],b[i])<>0 do
                Begin
                        Delete(b[i],pos(a[j],b[i]),length(a[j]));
                        Inc(c2);
   End;
End;
  Assign(f,fo);
Rewrite(f);
Writeln(f,c1+c2);
For i:=1 to n do
Writeln(f,b[i]);
        close(f1); close(f2);
end.

