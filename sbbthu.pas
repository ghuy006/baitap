uses crt, windows;
  var n,time,k,l,h:longint;
      f1,f2:text;
      f:array[1..10000] of longint;
 {-------------------------------------------}
  function du(b:longint):longint;
  var i,t1,t2,j:longint;
  begin
        t2:=0;
        for j:=1 to b div 2 do
                       if b mod j =0 then t2:=t2+j;

        du:=t2;
  end;
  {--------------------------------------------}
  begin
        assign(f1,'sbb.inp');  reset(f1);
        assign(f2,'sbb.out');   rewrite(f2);
        read(f1,L,H);
        for k:=l to h do
                if du(du(k))=k then write(f2,k,' ',du(k),' ');
        close(f1); close(f2);
  end.
