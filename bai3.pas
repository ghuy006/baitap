program MaximizeProfit;

var
  n, b: Integer;
  a: array of Integer;

function MaximizeMoney(n, b: Integer; a: array of Integer): Int64;
var
  maxProfit, currentMoney: Int64;
  i: Integer;
begin
  maxProfit := 0;
  currentMoney := b;

  for i := 0 to n - 1 do
  begin
    if a[i] < a[i + 1] then
    begin
      maxProfit := maxProfit + currentMoney div a[i];
      currentMoney := currentMoney mod a[i];
    end;
  end;

  Result := currentMoney + maxProfit * a[n - 1];
end;

procedure ReadInput(var n, b: Integer; var a: array of Integer);
var
  i: Integer;
begin
  ReadLn(n, b);
  SetLength(a, n);

  for i := 0 to n - 1 do
    Read(a[i]);
end;

procedure WriteOutput(result: Int64);
var
  output: TextFile;
begin
  AssignFile(output, 'BAI3.OUT');
  Rewrite(output);

  Write(output, result);

  CloseFile(output);
end;

begin
  ReadInput(n, b, a);
  WriteOutput(MaximizeMoney(n, b, a));
end.
