program olEx2;

var
  a: array [,] of char;
  b: array [65..90] of integer;
  i, j, m, n: integer;
  c: char;
  s, s1: string;

begin
  read(n, m);
  SetLength(a, m, n);
  
  for i := 65 to 90 do
    b[i] := 0;
  
  for i := 0 to m - 1 do
    for j := 0 to n - 1 do
    begin
      c := Chr(Random(65, 90));
      a[i, j] := c;
      b[ord(c)] += 1;
    end;
  
  for i := 0 to m - 1 do
  begin
    for j := 0 to n - 1 do
      write(a[i, j]);
    writeln;
  end;
  writeln;
  
  for i := m - 1 downto 0 do
    for j := n - 1 downto 0 do
      
      if b[Ord(a[i, j])] > 1 then 
      begin
        b[Ord(a[i, j])] -= 1;
        a[i, j] := '*';
      end;
  
  for i := 0 to m - 1 do
  begin
    for j := 0 to n - 1 do
      write(a[i, j]);
    writeln;
  end;
  writeln;
  
  for i := 1 to n do
    s += '*';
  
  for i := 0 to m - 1 do
  begin
    for j := 0 to n - 1 do
    begin
      s1 += a[i, j];
    end;
    if s1 <> s then writeln(s1);
    s1 := '';
  end;
  writeln;  
  
end.