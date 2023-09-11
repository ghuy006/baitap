var f1,f2:text;
     i,j,max:longint;
     S,t:string;
{-------------------------------------------------}
function kt(s:string):boolean;
var k:longint;
begin
     kt:=true;
     for k:=1 to length(s) div 2 do
           if S[k]<>S[length(s)+1-k] then kt:=false;
end;
{------------------------------------------------}

begin
     assign(f1,'chuoidx.inp'); reset(f1);
     assign(f2,'bai1.out'); rewrite(f2);
     read(f1,S);
     max:=1;
     for i:=1 to length(s)-1 do
     for j:=i+1 to length(s) do
           if kt(copy(s,i,j-i+1)) = true then
           if max < length(copy(s,i,j-i+1)) then
           begin
                max:=length(copy(s,i,j-i+1));
                t:=copy(s,i,j-i+1);
           end;
           write(f2,t);
     close(f1);  close(f2);
end.
