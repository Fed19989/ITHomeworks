program ex2;
//��� �����, � ������� ������� ��������� ������ ������ ����. �������� �����, ������������ ����� �������.

var
  s: string;
  i: integer;

begin
  read(s);
  for i := Length(s) downto 1 do 
    if not (s[i] in ['0'..'9']) then 
      Delete(s, i, 1);
  write(StrToInt(s));
end.