uses crt, windows;
var time:longint;
     f1, f2:text;
     code:integer;
      i,n,b,max,m,j:longint;
      s1,s2,s:string;
      f:array[1..10000] of longint;
 {-------------------------------------------}
   function kt(a:longint):boolean;
   var j:longint;
   begin
        if a<=1 then exit(false)
        else
                if a<=3 then exit(false)
        else
                begin
                        for j:=2 to trunc(sqrt(a)) do
                        if a mod j =0 then exit(false);
                end;
    kt:=true;
   end;


  {--------------------------------------------}
  function tcs(a:longint):longint;
  var k,s:longint;
  begin
        s:=0;
        while a <>0  do
                begin
                        k:=a mod 10;
                        a:=a div 10;
                        s:=s+k;
                end;
        tcs:=s;
  end;
  {------------------------------------------------}
  begin
         assign(f1,'snt.inp'); reset(f1); readln(f1,n);

        assign(f2,'snt.out');   rewrite(f2);
        if kt(n) then write(f2,1) else write(f2,0);
        close(f1); close(f2);
  end.