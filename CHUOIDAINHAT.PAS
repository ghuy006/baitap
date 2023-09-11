var
  n, i, len, max, start, e, sign: longint;
  a: array[1..200] of longint;
  f: text;
begin
  assign(f, 'BAI3.INP');
  reset(f);
  readln(f, n);
  for i := 1 to n do
    read(f, a[i]);
  close(f);

  len := 1;
  max := 1;
  start := 1;
  e := 1;
  sign := a[1] div abs(a[1]);

  for i := 2 to n do
    begin
      if (a[i] div abs(a[i])) = sign then
        begin
          len := len + 1;
          if len > max then
            begin
              max := len;
              start := i - len + 1;
              e := i;
            end;
        end
      else
        begin
          len := 1;
          sign := a[i] div abs(a[i]);
        end;
    end;

  assign(f, 'BAI3.OUT');
  rewrite(f);
  writeln(f, max);
  writeln(f, start, ' ', e);
  close(f);
end.
