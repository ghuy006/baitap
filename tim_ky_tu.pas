uses crt;
var
  s: string;
  i, max,n, dem,k,j: integer;
  c, kytu: char;
  f1,f2:text;
begin

  readln(n,k);
  read(s);
  
  max := 0;
  for c := 'a' to 'z' do
    begin
      dem := 0;
      for i := 1 to length(s) do
        if s[i] = c then inc(dem);
      if dem > max then
        begin
          max := dem;
          kytu := c;
        end;
    end;

  writeln(max*max+(k-max)*(k-max));
  readln

  end.
