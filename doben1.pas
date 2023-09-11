program Doben;
var
  n, x, s, i: longint;
  f1,f2: text;
  A:array[1..1000] of longint;
  function snt(k: integer): boolean;
  var
    j: integer;
  begin
    	snt := true;
    for j := 2 to trunc(sqrt(k)) do
      if k mod j = 0 then
        snt:= false;
  end;
begin
  assign(f1, 'Doben.inp'); reset(f1);
  assign(f2,'Doben.out'); rewrite(f2);
  readln(f1, n);
  for i := 1 to n do
  begin
    readln(f1,A[i]);
    s := A[i];
    while s >= 100 do
    begin
      A[i] := s;
      s := 0;
      while A[i] > 0 do
      begin
        s := s + A[i] mod 10;
        A[i] := A[i] div 10;
      end;
    end;
    if snt(s) then
      writeln(f2,'CAO')
    else if snt(s+1) or snt(s-1)  then
      writeln(f2,'TRUNGBINH')
    else
      writeln(f2,'THAP');
  end;
  close(f1); close(f2);
end.
