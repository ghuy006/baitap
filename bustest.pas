program BusSchedule;
var
  N, D, T0, i: integer;
  ArrivalTimes: array of integer;
  BusNumbers: array of integer;
begin
  // Nh?p d? li?u v�o
  readln(N, D, T0);
  SetLength(ArrivalTimes, N);
  SetLength(BusNumbers, N);
  for i := 0 to N - 1 do
    read(ArrivalTimes[i]);

  // T�nh s? hi?u chuy?n xe buyt m� m?i h?c sinh s? l�n
  for i := 0 to N - 1 do
    BusNumbers[i] := (ArrivalTimes[i] - T0) div D + 1;

  // In k?t qu? ra m�n h�nh
  for i := 0 to N - 1 do
    write(BusNumbers[i], ' ');
  writeln;
end.
