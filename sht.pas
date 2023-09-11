uses crt, windows;
  var n,time,k:longint;
      f1,f2:text;
      f:array[1..10000] of longint;
 {-------------------------------------------}
  function sht(a:longint):boolean;
  var d,i,t:longint;
  begin
        t:=0;
        for i:=1 to trunc(sqrt(a)) do
                        if a mod i =0 then t:=t+i+(a div i);

        if sqr(trunc(sqrt(a)))=a then t:=t-trunc(sqrt(a))-a
        else t:=t-a;

        if t=a then exit(true) else exit(false);
  end;
  {--------------------------------------------}
  begin
         time:=gettickcount;
        assign(f1,'sht.inp');  reset(f1); readln(f1,n);
        assign(f2,'sht.out');   rewrite(f2);
        for k:=1 to n do
                begin
                        read(f1,f[k]);
                        if sht(f[k]) then writeln(f2,f[k]);
                end;
        time:=gettickcount-time;
        write(f2,time,' mili giay');
        close(f1); close(f2);
  end.
