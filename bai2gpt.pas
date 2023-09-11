type
  CharFrequency = record
    character: Char;
    frequency: longint;
  end;

var
  S: String;
  k,n: longint;
  f1,f2:text;

function MaximizeValue(S: String; k: Integer): longint;
var
  freq: array['A'..'Z'] of Integer;
  sortedFreq: array of CharFrequency;
  i, j, value: Integer;
begin
  FillChar(freq, SizeOf(freq), 0);

  for i := 1 to Length(S) do
    Inc(freq[S[i]]);

  SetLength(sortedFreq, 0);

  for i := Ord('A') to Ord('Z') do
    if freq[Chr(i)] > 0 then
    begin
      SetLength(sortedFreq, Length(sortedFreq) + 1);
      sortedFreq[High(sortedFreq)].character := Chr(i);
      sortedFreq[High(sortedFreq)].frequency := freq[Chr(i)];
    end;

  for i := High(sortedFreq) downto Low(sortedFreq) do
  begin
    if k >= sortedFreq[i].frequency then
    begin
      value := value + sortedFreq[i].frequency * sortedFreq[i].frequency;
      Dec(k, sortedFreq[i].frequency);
    end
    else
    begin
      value := value + k * k;
      Break;
    end;
  end;

 MaximizeValue := value;
end;
 begin
        assign(f1,'bai2.inp'); reset(f1);
        assign(f2,'nai2.out'); rewrite(f2);
        readln(f1,n,k);
        read(f1,s);
        writeln(f2,maximizevalue(s,k));
        close(f1); close(f2);
 end.