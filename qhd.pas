type km=array[1..100000] of longint;

var f1,f2:text;
    a:km;
procedure quicksort;
        procedure partition(l,h:longint);
        var i,j:longint;
        begin
                repeat
                if l>=h then exit;
                if l<h then
                        begin
                                partition(l,j); l:=i;
                        end;
                else
                begin
                partition(i,h); h:=j;
                end;
                until false;
        end;
        begin
        partition(1,n);
        end;