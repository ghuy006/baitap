 type

	tlist = array[1..10000] of longint;
var
	m,n,i: longint;
        f1,f2:text;
	a:tlist;

procedure swap(var x,y:longint);
	var tam:longint;
	begin
			tam:=x;
			x:=y;
			y:=tam;
	end;

procedure qsort(var x:tlist; dau,cuoi:longint);
procedure sort(l,r:longint);
	var i,j,key:longint;
	begin
			i:=l;
			j:=r;
			key:=a[(i+j) div 2];
			repeat
			while a[i] < key do inc(i);
			while a[j] > key do dec(j);
			if i <= j then
			begin
				swap(a[i],a[j]);
				inc(i); dec(j);
			end;
			until i >j;
			if i < r then sort(i,r);
			if l < j then sort(l,j);
	end;
	begin
		sort(dau,cuoi);
	end;

Begin
                assign(f1,'qsort.inp'); reset(f1);
                assign(f2,'qsort.out'); rewrite(f2);
                readln(f1,m,n);
                for i:=1 to m do read(f1,a[i]);
                readln(f1);
                for i:=m+1 to n+m do read(f1,a[i]);
		qsort(a,1,n+m);
		for i:=1 to m+n do write(f2,a[i],' ');
                close(f1); close(f2);
end.
