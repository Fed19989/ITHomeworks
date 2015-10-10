program olEx3;

var
  i, z1, z2, z3, z4, z5, n: integer;
  d1, d2, d3, d4, d5: real;
  s: string;

function DoIt(a: real; simNum: integer; b: real): real;
begin
  case simNum of
    0: Result := a + b;
    1: Result := a - b;
    2: Result := a * b;
    3: Result := a / b;
  end;
end;

function ShowSim(sim: integer): char;
begin
  case sim of
    0: Result := '+';
    1: Result := '-';
    2: Result := '*';
    3: Result := '/';
  end;
end;

begin
  read(n);
  for i := 0 to 1023 do
  begin
    z5 := i mod 4;
    z4 := i div 4 mod 4;
    z3 := i div 16 mod 4;
    z2 := i div 64 mod 4;
    z1 := i div 256;
    
    d1 := DoIt(1, z1, 2);
    d2 := DoIt(d1, z2, 3);
    d3 := DoIt(d2, z3, 4);
    d4 := DoIt(d3, z4, 5);
    d5 := DoIt(d4, z5, 6);
    
    if d5 = n then 
    begin
      s := ShowSim(z1) + ShowSim(z2) + ShowSim(z3) + ShowSim(z4) + ShowSim(z5);
      writeln('(((( 1 ', s[1], ' 2) ', s[2], ' 3) ', s[3], ' 4) ', s[4], ' 5) ', s[5], ' 6 = ', n);
    end;
  end;
end.