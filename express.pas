program MaxExpression;

var
  n, i: integer;
  a: array[1..100000] of integer;
  max1, max2, max3, min1, min2, result: integer;

begin
  readln(n);


  for i := 1 to n do

    readln(a[i]);


  max1 := 0;
  max2 := 0;
  max3 := 0;
  min1 := MaxInt;
  min2 := MaxInt;

  for i := 1 to n  do
  begin
    if a[i] > max1 then
    begin
      max3 := max2;
      max2 := max1;
      max1 := a[i];
    end
    else if a[i] > max2 then
    begin
      max3 := max2;
      max2 := a[i];
    end
    else if a[i] > max3 then
    begin
      max3 := a[i];
    end;

    if a[i] < min1 then
    begin
      min2 := min1;
      min1 := a[i];
    end
    else if a[i] < min2 then
    begin
      min2 := a[i];
    end;
  end;

  result := max1 * max2 * max3 + min1 * min2;

  writeln( result);
readln
end.
